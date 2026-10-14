cask "hstracker" do
  version "3.7.0"
  sha256 "568c3dca55e7f6733402b33167e95e91d72bf95e95afad787baff0b84e36038b"

  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
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

  uninstall quit: "net.hearthsim.hstracker"

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
