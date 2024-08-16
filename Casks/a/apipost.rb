cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "8.1.0"
  sha256 arm:   "cd598683dceaed41f7bf6d936fe861a06bd6cbd9b2af1008fa36ade96aaa9c07",
         intel: "55629fa31013ee98e63972b25bff7819d11a9e30a8f3f61aa79a5048a41c37d6"

  url "https://www.apipost.cn/dl.php?client=Mac&arch=#{arch}&version=#{version}"
  name "Apipost"
  desc "Platform for API documentation, debugging, Mock and testing"
  homepage "https://www.apipost.cn/"

  livecheck do
    url :homepage
    regex(/href=.*client=Mac&arch=#{arch}&version=(\d+(?:\.\d+)+)[<" ]/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "ApiPost.app"

  zap trash: [
    "~/Library/Application Support/ApiPost#{version.major}",
    "~/Library/Logs/ApiPost#{version.major}",
    "~/Library/Preferences/com.apipost.apipost.fe.desctop.cn.#{version.major}.x.plist",
    "~/Library/Saved Application State/com.apipost.apipost.fe.desctop.cn.#{version.major}.x.savedState",
  ]
end
