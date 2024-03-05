cask "elgato-stream-deck" do
  version "6.5.2.19936"
  sha256 "5e99071f26d809474ac24c320780b0acd9e120a995a0a275c8a70b9c564ac251"

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
  depends_on macos: ">= :high_sierra"

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: "com.elgato.StreamDeck",
            quit:      "com.elgato.StreamDeck",
            pkgutil:   "com.elgato.StreamDeck",
            delete:    "/Applications/Elgato Stream Deck.app"

  zap trash: [
    "~/Library/Application Support/com.elgato.StreamDeck",
    "~/Library/Caches/com.elgato.StreamDeck",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.StreamDeck",
    "~/Library/Preferences/com.elgato.StreamDeck.plist",
  ]
end
