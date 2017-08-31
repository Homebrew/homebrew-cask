cask 'hstracker' do
  version '1.1.0'
  sha256 '3e4cc33e2ca25e873ad9d7170cdd905274dc3761ed30acbbbcc010a84bb0e6e4'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '91b6829e6db43a691771dad82a1e456803fcd89c4b90cc517e4879345c6ab4cf'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
