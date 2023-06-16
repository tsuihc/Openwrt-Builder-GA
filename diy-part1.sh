#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Add OpenClash
rm -rf package/luci-app-openclash
wget https://github.com/vernesong/OpenClash/archive/master.zip -O OpenClash.zip
unzip OpenClash.zip
cp -r OpenClash-master/luci-app-openclash package
rm -rf OpenClash.zip
rm -rf OpenClash-master

# Add OpenClash
rm -rf package/luci-theme-argon
wget https://github.com/jerrykuku/luci-theme-argon/archive/refs/heads/master.zip -O Argon.zip
unzip Argon.zip
cp -r luci-theme-argon-master package
rm -rf Argon.zip
rm -rf luci-theme-argon-master
