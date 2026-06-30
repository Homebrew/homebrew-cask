cask "elgato-stream-deck" do
  version "7.5.0.22885"
  sha256 "f72bb32e71540d96804c85c831e6f72ac4d86a111793f6ebb5afc15fa5b50b5a"

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
  depends_on :macos

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
