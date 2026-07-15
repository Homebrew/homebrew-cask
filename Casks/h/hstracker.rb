cask "hstracker" do
  version "3.6.1"
  sha256 "b8397ba0bd42b8a4807201e0f8060a6bbcbc368ecfe2787b96e52801692c5c1a"

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
  depends_on :macos

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
end
