cask 'hstracker' do
  version '1.6.11'
  sha256 '66db8157eee600cccc3d32097f17cf35fb509b3356fe1a3dc19c51b1ba0b2f31'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
