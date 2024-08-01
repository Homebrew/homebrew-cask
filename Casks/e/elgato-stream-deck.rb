cask "elgato-stream-deck" do
  version "6.7.1.20984"
  sha256 "7dd8b69b89ef38b1c03d173f5a8623728130386cd74b34a15bee9563be4acc40"

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
