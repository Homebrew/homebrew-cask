cask "apipost" do
  arch arm: "arm64", intel: "x64"

  version "8.1.13"
  sha256 arm:   "f0ed110fe456a673fa18862d5574b4ac5675713c2fba503c02b2327b668cf907",
         intel: "52559e6c58e5bacc46aada302ddc1ab2012f3369780292af3896bb0f14656d58"

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
