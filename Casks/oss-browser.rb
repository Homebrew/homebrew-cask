cask "oss-browser" do
  version "1.13.0"
  sha256 "be657c0dddeadedbf64fee74aa8a583dadec1edaa3c11eb62736c38a3eb22cf1"

  url "https://oss-attachment.cn-hangzhou.oss.aliyun-inc.com/oss-browser/#{version}/oss-browser-darwin-x64.zip",
      verified: "oss-attachment.cn-hangzhou.oss.aliyun-inc.com"
  name "oss-browser"
  desc "Graphical management tool developed by Alibaba Cloud"
  homepage "https://github.com/aliyun/oss-browser/"

  app "oss-browser-darwin-x64/oss-browser.app"
end
