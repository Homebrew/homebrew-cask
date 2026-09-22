cask "elgato-stream-deck" do
  version "7.6.0.23012"
  sha256 "89c7465f3f4695825b935db055fa644e375b49ae09323cdabb54430a2c208767"

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

  uninstall launchctl: [
              "com.elgato.StreamDeck*",
              "com.elgato.StreamDeck.trampoline",
            ],
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
