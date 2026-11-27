cask "hstracker" do
  version "3.7.5"
  sha256 "f3bf1baeadfcfca3ef90344b98c6cde1e85a5b043a51f7c3ee0c09c705464dd5"

  url "https://github.com/HearthSim/HSTracker-Releases/releases/download/#{version}/HSTracker.app.zip"
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
  depends_on macos: :monterey

  app "HSTracker.app"

  uninstall quit: "net.hearthsim.hstracker"

  zap trash: [
    "~/Library/Application Support/HSTracker",
    "~/Library/Application Support/net.hearthsim.hstracker",
    "~/Library/Caches/HSTracker",
    "~/Library/Caches/net.hearthsim.hstracker",
    "~/Library/Cookies/net.hearthsim.hstracker.binarycookies*",
    "~/Library/HTTPStorages/net.hearthsim.hstracker",
    "~/Library/Logs/HSTracker",
    "~/Library/Preferences/net.hearthsim.hstracker.plist",
    "~/Library/Saved Application State/net.hearthsim.hstracker.savedState",
  ]
end
