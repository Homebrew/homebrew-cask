cask 'hstracker' do
  version '1.6.35'
  sha256 '9a5995b8b528805eb54b8f1533f61635f0fd6eb58dc1999a8c61089dfd300f28'

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
