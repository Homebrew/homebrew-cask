cask 'hstracker' do
  version '1.6.14'
  sha256 '5c3b339622c8299e55145d94b90f4f3eb72d1716a7b0b68ecabc8f51793d472b'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
