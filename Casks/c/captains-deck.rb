cask "captains-deck" do
  version "1.3.3.8"
  sha256 "837e7f74ee68f0a2b637eb643e149cfbd94d635e475bdb2d7d9b90ea77bbca5c"

  url "https://captains-deck.com/downloads/CaptainsDeck-#{version}.dmg"
  name "Captain's Deck"
  desc "Dual-pane file manager inspired by Norton Commander"
  homepage "https://captains-deck.com/"

  livecheck do
    url "https://captains-deck.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Captain's Deck.app"

  zap trash: [
    "~/Library/Application Support/CaptainsDeck",
    "~/Library/Caches/com.captainsdeck.app",
    "~/Library/HTTPStorages/com.captainsdeck.app",
    "~/Library/Preferences/com.captainsdeck.app.plist",
    "~/Library/WebKit/com.captainsdeck.app",
  ]
end
