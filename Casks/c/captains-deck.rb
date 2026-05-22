cask "captains-deck" do
  version "1.4.6"
  sha256 "9eeffc40722d1a78d537107f661a8a6c42a233192bf7279d93e5a460bbe6b6d0"

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
