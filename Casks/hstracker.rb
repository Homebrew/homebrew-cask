cask "hstracker" do
  version "1.7.2"
  sha256 "4d7e1a7fed68f98c3a8d3d279d8dbdd11c841a3ea065db92d5f153d3d3ea91da"

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast "https://github.com/HearthSim/HSTracker/releases.atom"
  name "Hearthstone Deck Tracker"
  desc "Deck tracker and deck manager for Hearthstone"
  homepage "https://hsdecktracker.net/"

  app "HSTracker.app"
end
