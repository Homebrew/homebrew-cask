cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.14"
  sha256 arm:   "975f097e24bc044b9ea540b9074867a5d7ef7a0feff98b42f4add8114777ef1a",
         intel: "210637e6dcbc74824a40346a51f3f3ac3b6dd10e6b344d3cef8b5d18cbe7ba80"

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
