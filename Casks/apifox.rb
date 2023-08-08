cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.9"
  sha256 arm:   "01491d5a0fc91c1462f0afedfa58cafec0d82347ce8eb9001ba8b1f8afd7bd73",
         intel: "0b70bbd01156b1f86f07ae83f6c239a06b0a4dfe56e052ee55cc021cce0c53bf"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://cdn.apifox.cn/download/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
    strategy :electron_builder
  end

  auto_updates true

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
