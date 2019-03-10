cask 'hstracker' do
  version '1.5.5'
  sha256 '14f0a9f050f856b7fcd9e7b9ab98982748366e6d5cb67b0d7f7046648edd54ee'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
