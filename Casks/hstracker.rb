cask 'hstracker' do
  version '1.6.4'
  sha256 'ae52214c2dbd4cf3478e074a17d0c49abbd1ef636874ef95e87c1435591d3274'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
