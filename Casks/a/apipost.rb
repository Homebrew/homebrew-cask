cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "8.1.17"
  sha256 arm:   "66c7c96e7d238d4db19e75ff62c0a47b6a5344d94d71fcc3da085a1d691be133",
         intel: "8f60b29ad15b2e8b989212febde06c9c8dd9765465dbf4a5350b62dd3ab3d1cc"

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
