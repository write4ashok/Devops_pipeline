#!/bin/bash

docker stop devopsapp 2>/dev/null || true
docker rm devopsapp 2>/dev/null || true

docker pull write4ashok/Devops_pipeline:latest

docker run -d \
  --name devopsapp \
  -p 80:5000 \
  ashokdev/devops-project:latest

