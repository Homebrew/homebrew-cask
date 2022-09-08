cask "quixel-bridge" do
  version "2022.0.6"
  sha256 :no_check

  url "https://d2shgxa8i058x8.cloudfront.net/bridge/mac/Bridge.dmg",
      verified: "https://d2shgxa8i058x8.cloudfront.net/"
  name "Quixel Bridge"
  desc "Your gateway to Megascans and Metahumans"
  homepage "https://quixel.com/bridge/"

  app "Bridge.app"

  zap trash: [
    "~/Library/Application Support/Bridge",
    "~/Library/Preferences/se.quixel.bridge.plist",
    "~/Library/Saved Application State/se.quixel.bridge.savedState",
  ]
end
