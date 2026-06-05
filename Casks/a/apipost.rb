cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "8.2.7"
  sha256 arm:   "947e85bd8dd471b52ff2a9e98a3e47713d37e259d1c8c99f0ef2ff9ceffa1e3d",
         intel: "e06ebe8dd9196bf3a3be84afcb3fae672acc229ee3a145a3f0700c0bc197c6a0"

  url "https://www.apipost.cn/dl.php?client=Mac&arch=#{arch}&version=#{version}"
  name "Apipost"
  desc "Platform for API documentation, debugging, Mock and testing"
  homepage "https://www.apipost.cn/"

  livecheck do
    url :homepage
    regex(/href=.*client=Mac&arch=#{arch}&version=(\d+(?:\.\d+)+)[<" ]/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "ApiPost.app"

  zap trash: [
    "~/Library/Application Support/ApiPost#{version.major}",
    "~/Library/Logs/ApiPost#{version.major}",
    "~/Library/Preferences/com.apipost.apipost.fe.desctop.cn.#{version.major}.x.plist",
    "~/Library/Saved Application State/com.apipost.apipost.fe.desctop.cn.#{version.major}.x.savedState",
  ]
end
