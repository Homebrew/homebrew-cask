cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.15"
  sha256 arm:   "ab995243ddeaf7b521a37c95001756abec1b882fb670a037adfeec2e3dc2843a",
         intel: "21d7e43ca88ea5e7ca8085a999d32094f8343885687b596ae1b4572c0b5db2e0"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://api.apifox.cn/api/v1/configs/client-updates/#{version}/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
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
