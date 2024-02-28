FROM golang:alpine as builder
WORKDIR /go/src/
COPY . .
RUN CGO_ENABLE=0 GOOS=linux go build -o /go/bin/server main.go
CMD ["/go/bin/server"]

# FROM scratch
# COPY --from=builder /go/bin/server /server
# EXPOSE 8080
# CMD ["/server"]