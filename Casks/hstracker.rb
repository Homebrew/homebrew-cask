cask 'hstracker' do
  version '0.20.1'
  sha256 '7f4dd8330c1b6cd95dcc5f8a7911778aad02cca7198929a2db7ef8524fcd0620'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: 'a7d91467a1b02b0e1f7eb489a3de2559db6737fe3707681280a07baf9958769d'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
