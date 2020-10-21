cask "hstracker" do
  version "1.7.1"
  sha256 "ca8d17023c53766bcd4f7f5de467f1758708a0877e6a4a8f14ea096f528106ba"

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast "https://github.com/HearthSim/HSTracker/releases.atom"
  name "Hearthstone Deck Tracker"
  desc "Deck tracker and deck manager for Hearthstone"
  homepage "https://hsdecktracker.net/"

  app "HSTracker.app"
end
