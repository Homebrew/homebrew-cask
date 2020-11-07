cask "hstracker" do
  version "1.7.4"
  sha256 "642935ed2cead128246e166e3a2d18ffce11361b7b01432dfd4f4cc7b617b37e"

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast "https://github.com/HearthSim/HSTracker/releases.atom"
  name "Hearthstone Deck Tracker"
  desc "Deck tracker and deck manager for Hearthstone"
  homepage "https://hsdecktracker.net/"

  app "HSTracker.app"
end
