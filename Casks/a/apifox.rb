cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.6.4"
  sha256 arm:   "9889630492edc5c19d93ff1ac961c37ab55e4a0ab085638e8829a76a53a06a83",
         intel: "8b5e90c2fe86b58feaba32243ee40deeddb3141fb6adb24ea25168483eceb636"

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
