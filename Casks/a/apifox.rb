cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.20"
  sha256 arm:   "edeb7526c9ee4a366e69ae807755284746baaa8374a63ac3ddcc889d753d0177",
         intel: "2ee439286ecb404956d88f896df9a757b0665d9c59cf4affb19dab3b2b9e7239"

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
