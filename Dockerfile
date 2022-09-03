FROM golang:1.19.0-alpine
WORKDIR /app
COPY ./ ./
RUN go mod download
RUN go build -o /randnum
EXPOSE 8080
CMD [ "/randnum" ]