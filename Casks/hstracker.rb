cask 'hstracker' do
  version '1.5.6'
  sha256 '3f8c53d951d76448865ef05d11543c6e079eb6a5fb15d71c218b7ebca797a8b7'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
