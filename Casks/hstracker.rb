cask 'hstracker' do
  version '1.5.3'
  sha256 'ab816511bfa84de56be93f250c264cb2131197e8bd2e0259a71776eb8dbd5ac3'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
