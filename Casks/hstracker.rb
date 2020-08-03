cask "hstracker" do
  version "1.6.37"
  sha256 "945fc3c5b48a4beb9789f1f4cb653dc9aeb0cc5642338bd12c579d717a6befb5"

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast "https://github.com/HearthSim/HSTracker/releases.atom"
  name "Hearthstone Deck Tracker"
  homepage "https://hsdecktracker.net/"

  app "HSTracker.app"
end
