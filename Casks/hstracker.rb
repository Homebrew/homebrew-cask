cask "hstracker" do
  version "2.2.10"
  sha256 "6650bafd37295330da30a7714eb851f4684131ae38e8e957145fc1120dce0140"

  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip",
      verified: "github.com/HearthSim/HSTracker/"
  name "Hearthstone Deck Tracker"
  desc "Deck tracker and deck manager for Hearthstone"
  homepage "https://hsdecktracker.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

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
