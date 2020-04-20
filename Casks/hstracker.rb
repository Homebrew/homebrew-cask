cask 'hstracker' do
  version '1.6.25'
  sha256 '15a9bbad8b176a22405cfe929a5728863ae2a8241b82bebe936692d244d945e5'

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
