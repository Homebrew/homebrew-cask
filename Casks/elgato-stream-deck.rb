cask "elgato-stream-deck" do
  version "6.2.0.18816"
  sha256 "a4c693daf7a04e9e4256cf37d69b2cf79dee647c1007bb3cf348ecec668d0b25"

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  name "Elgato Stream Deck"
  desc "Assign keys, and then decorate and label them"
  homepage "https://www.elgato.com/en/gaming/stream-deck"

  livecheck do
    url "https://gc-updates.elgato.com/mac/sd-update/final/download-website.php"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  pkg "Stream_Deck_#{version}.pkg"

  uninstall delete:    "/Applications/Elgato Stream Deck.app",
            launchctl: "com.elgato.StreamDeck",
            quit:      "com.elgato.StreamDeck",
            pkgutil:   "com.elgato.StreamDeck"

  zap trash: [
    "~/Library/Application Support/com.elgato.StreamDeck",
    "~/Library/Caches/com.elgato.StreamDeck",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.StreamDeck",
    "~/Library/Preferences/com.elgato.StreamDeck.plist",
  ]
end
