cask "captains-deck" do
  version "1.5.9"
  sha256 "94838c8576ce61cc882c79441faea72a8eeedd2467e87cf3474bff07599261de"

  url "https://captains-deck.com/downloads/CaptainsDeck-#{version}.dmg"
  name "Captain's Deck"
  desc "Dual-pane file manager inspired by Norton Commander"
  homepage "https://captains-deck.com/"

  livecheck do
    url "https://captains-deck.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Captain's Deck.app"

  zap trash: [
    "~/Library/Application Support/CaptainsDeck",
    "~/Library/Caches/com.captainsdeck.app",
    "~/Library/HTTPStorages/com.captainsdeck.app",
    "~/Library/Preferences/com.captainsdeck.app.plist",
    "~/Library/WebKit/com.captainsdeck.app",
  ]
end
