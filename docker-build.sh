#!/bin/bash

# 设置镜像名称和版本
IMAGE_NAME="summer-teslamate-fix-addrs"
IMAGE_VERSION="latest"

# 打印当前操作
echo "开始构建 Docker 镜像：$IMAGE_NAME:$IMAGE_VERSION"

# 构建 Docker 镜像
docker build -t $IMAGE_NAME:$IMAGE_VERSION .

# 检查构建是否成功
if [ $? -eq 0 ]; then
    echo "镜像构建成功：$IMAGE_NAME:$IMAGE_VERSION"
else
    echo "镜像构建失败！"
    exit 1
fi