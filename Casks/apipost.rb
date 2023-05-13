cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "7.1.4"
  sha256 arm:   "4a99c9708c2425167038cea41036cb5de957e0b534f15a6d5846c42f0ae6c155",
         intel: "4a830de5cf34febdaeabdd29c60bac53f121ee3ee2b1e9a08d8bef1027e4ed3e"

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
