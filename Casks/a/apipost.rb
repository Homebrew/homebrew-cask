cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "7.2.3"
  sha256 arm:   "3aff4da3b87f003c2ec4eed2dfbc03d2b6eb9f8c341790d12cfda50dbbd4ae1d",
         intel: "83588bec21ad01ce46540686f21cb0438260e64854afe0d702470fb1adb3e915"

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
