cask "hstracker" do
  version "3.3.11"
  sha256 "1b0b188aa62a2e5189cf8118ee6f283123efa6d27868de1ddcec1a552650a52a"

  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip",
      verified: "github.com/HearthSim/HSTracker/"
  name "Hearthstone Deck Tracker"
  desc "Deck tracker and deck manager for Hearthstone"
  homepage "https://hsdecktracker.net/"

  livecheck do
    url "https://hsdecktracker.net/hstracker/appcast2.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true

  app "HSTracker.app"

  zap trash: [
    "~/Library/Application Support/HSTracker",
    "~/Library/Application Support/net.hearthsim.hstracker",
    "~/Library/Caches/HSTracker",
    "~/Library/Caches/net.hearthsim.hstracker",
    "~/Library/Cookies/net.hearthsim.hstracker.binarycookies*",
    "~/Library/Logs/HSTracker",
    "~/Library/Preferences/net.hearthsim.hstracker.plist",
    "~/Library/Saved Application State/net.hearthsim.hstracker.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
