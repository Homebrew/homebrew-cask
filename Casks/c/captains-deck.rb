cask "captains-deck" do
  version "1.4.8.2"
  sha256 "d759bab2605ee19bbc204eb0a3992b4721169f10471c176a56e6e9b0b99eb0d2"

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
