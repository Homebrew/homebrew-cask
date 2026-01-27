cask "elgato-stream-deck" do
  version "7.2.1.22472"
  sha256 "d0fc9ca3c914ca03b822ca9b5ba677306f9fba8b351421f8b7246652b232430b"

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  name "Elgato Stream Deck"
  desc "Assign keys, and then decorate and label them"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/sd-update/final/app-version-check.json"
    strategy :json do |json|
      json.dig("Manual", "Version")
    end
  end

  auto_updates true

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: "com.elgato.StreamDeck",
            quit:      "com.elgato.StreamDeck",
            pkgutil:   "com.elgato.StreamDeck",
            delete:    [
              "/Applications/Elgato Stream Deck.app",
              "/Library/LaunchAgents/com.elgato.StreamDeck.plist",
              "~/Library/LaunchAgents/com.elgato.StreamDeck.plist",
            ]

  zap trash: [
    "~/Library/Application Support/com.elgato.StreamDeck",
    "~/Library/Caches/com.elgato.StreamDeck",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.StreamDeck",
    "~/Library/Preferences/com.elgato.StreamDeck.plist",
  ]
end
