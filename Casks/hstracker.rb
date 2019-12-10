cask 'hstracker' do
  version '1.6.9'
  sha256 'd09ce3b582cec0d4ab60a150790cbff3c09595a58cfc5ff2445e1a08d062ae03'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
