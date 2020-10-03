cask "hstracker" do
  version "1.7.0"
  sha256 "0eec3fbc9ca906ab37528404cefe654445f5f13717c01b2b26e3c720a135dade"

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast "https://github.com/HearthSim/HSTracker/releases.atom"
  name "Hearthstone Deck Tracker"
  desc "Deck tracker and deck manager for Hearthstone"
  homepage "https://hsdecktracker.net/"

  app "HSTracker.app"
end
