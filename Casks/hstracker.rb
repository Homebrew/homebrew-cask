cask "hstracker" do
  version "1.7.6"
  sha256 "b7bae557537cbd1ae31c32e3e956a8326e97bb37dde03f5646e77eba48c62006"

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast "https://github.com/HearthSim/HSTracker/releases.atom"
  name "Hearthstone Deck Tracker"
  desc "Deck tracker and deck manager for Hearthstone"
  homepage "https://hsdecktracker.net/"

  app "HSTracker.app"

  zap trash: [
  "~/Library/Application Support/HSTracker",
  "~/Library/Application Support/net.hearthsim.hstracker",
  "~/Library/Caches/HSTracker",
  "~/Library/Caches/net.hearthsim.hstracker",
  "~/Library/Cookies/net.hearthsim.hstracker.binarycookies",
  "~/Library/Cookies/net.hearthsim.hstracker.binarycookies_tmp_476_0.dat",
  "~/Library/Logs/HSTracker",
  "~/Library/Preferences/net.hearthsim.hstracker.plist",
  "~/Library/Saved Application State/net.hearthsim.hstracker.savedState",
]
end
