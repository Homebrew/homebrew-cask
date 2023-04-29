cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.37"
  sha256 arm:   "a663a1ebb2ccd9d84cc6c91703083e95f7517a95f5e0fe2e1a016c119e6a7830",
         intel: "a08afc0005277df32ae0be90cba9f8dc442cfb0d6509ce3879335e7997a2d849"

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
