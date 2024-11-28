cask "bridge" do
  version "2024.0.7"
  sha256 :no_check

  url "https://d2shgxa8i058x8.cloudfront.net/bridge/mac/Bridge.dmg",
      verified: "d2shgxa8i058x8.cloudfront.net/bridge/mac/"
  name "Quixel Bridge"
  desc "Your gateway to Megascans and Metahumans"
  homepage "https://quixel.com/bridge/"

  livecheck do
    url "https://quixel-apps.s3.amazonaws.com/bridge/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Bridge.app"

  zap trash: [
    "~/Library/Application Support/Bridge",
    "~/Library/Preferences/se.quixel.bridge.plist",
    "~/Library/Saved Application State/se.quixel.bridge.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
