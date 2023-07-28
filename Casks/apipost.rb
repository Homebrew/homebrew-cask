cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "7.1.8"
  sha256 arm:   "cf8c0f117d61e69f5c6eb9e787974f0d04497d408e2b360c33291957668fb4bf",
         intel: "1ced6ae6ecd39f993dba16afa2dbeabaa768a3786dabc6f2a56278f28052a763"

  url "https://www.apipost.cn/dl.php?client=Mac&arch=#{arch}&version=#{version}"
  name "Apipost"
  desc "Platform for API documentation, debugging, Mock and testing"
  homepage "https://www.apipost.cn/"

  livecheck do
    url :homepage
    regex(/href=.*client=Mac&arch=#{arch}&version=(\d+(?:\.\d+)+)[<" ]/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ApiPost#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/ApiPost#{version.major}",
    "~/Library/Logs/ApiPost#{version.major}",
    "~/Library/Preferences/com.apipost.apipost.fe.desctop.cn.#{version.major}.x.plist",
    "~/Library/Saved Application State/com.apipost.apipost.fe.desctop.cn.#{version.major}.x.savedState",
  ]
end
