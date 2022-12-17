cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "7.0.11"
  sha256 arm:   "4b8e6d9b12de7ad2eca559853e6560f5a7b7d9d8ff803e5fd3ac190250a1dbbe",
         intel: "f10c49cd156b2a46d495cf31baa63f1fd9ec7c11452ed36001f28d4344aeceed"

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
