cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "8.1.1"
  sha256 arm:   "b6191748a544af3a31b3ca0812dca35fc6f901d398a211f771e08b879abf547b",
         intel: "384bcb2d5487677c870b7aa1c368c994b3816621842fa6d3e3174abfff599034"

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
