cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "7.0.6"
  sha256 arm:   "286b2fca7edf2c3ff126965ad96a84f0a92dff9e1a2bb3b323d319d4ab0a0c89",
         intel: "e71253f4a1914500cad3195fb20dc68bc7e2d2d120df31e70b4c3afe93a6dc35"

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
