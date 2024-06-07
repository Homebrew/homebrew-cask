cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.30"
  sha256 arm:   "cfe4ae160882bb929e9a01fd6b8382708789b1ead6b4c03381312f7ba9d89c9b",
         intel: "78a7b548246383fa549c8665402e01760670afbef67445b69b347ddd6d511b02"

  url "https://file-assets.apifox.com/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.com/"

  livecheck do
    url "https://api.apifox.com/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
