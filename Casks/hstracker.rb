cask 'hstracker' do
  version '1.6.30'
  sha256 '73ec8da77feb6d7cbd22ce5b75262cf1056e24122e10aa86674f2c8dff0431ec'

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
