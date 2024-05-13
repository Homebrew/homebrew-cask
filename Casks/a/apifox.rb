cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.5.25"
  sha256 arm:   "e70b291fe8125ffb0a42f9f4422742515f6d99168540779f341f1bb1a4049278",
         intel: "3fca3bc795c7b1715407e611bf103698a807fa6f2bf7810ad78e8150d89d3ef3"

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
