cask "hstracker" do
  version "2.3.11"
  sha256 "09a8b9278c6aa3fb96e1592f86790ccdc1fb60df114a7c902480c9520622100f"

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
