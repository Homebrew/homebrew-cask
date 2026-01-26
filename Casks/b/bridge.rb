cask "bridge" do
  version "2025.0.0"
  sha256 "3e74ba32f28d29a9f951f1f7cc98b2207049ce618c269ee15cfcd1652bfa1249"

  url "https://d2shgxa8i058x8.cloudfront.net/bridge/mac/Bridge-#{version}.dmg",
      verified: "d2shgxa8i058x8.cloudfront.net/bridge/"
  name "Quixel Bridge"
  desc "3D asset manager"
  homepage "https://quixel.com/"

  deprecate! date: "2025-12-18", because: :discontinued, replacement_cask: "epic-games"
  disable! date: "2026-12-18", because: :discontinued, replacement_cask: "epic-games"

  auto_updates true

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
