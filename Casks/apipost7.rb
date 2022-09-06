cask "apipost7" do
  arch arm: "arm64", intel: "x64"

  version "7.0.0"
  sha256 arm:   "d1c3d7e98b95104b2a994ff7dbd67f12af331e4340955d01f6ba1489c9d8c1b8",
         intel: "17a7c0c2fccd88188f2b5ef01f779705df76a9816b6929d68ca0d60ca0902de4"

  url "https://www.apipost.cn/dl.php?client=Mac&arch=#{arch}&version=#{version}"
  name "Apipost"
  desc "Platform for API documentation, debugging, Mock and testing"
  homepage "https://www.apipost.cn/"

  livecheck do
    url :homepage
    regex(/client=Mac&arch=#{arch}&version=(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "ApiPost7.app"

  zap trash: [
    "~/Library/Application Support/ApiPost7",
    "~/Library/Logs/ApiPost7",
    "~/Library/Preferences/com.apipost.apipost.fe.desctop.cn.7.x.plist",
    "~/Library/Saved Application State/com.apipost.apipost.fe.desctop.cn.7.x.savedState",
  ]
end
