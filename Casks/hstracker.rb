cask 'hstracker' do
  version '1.5.1b'
  sha256 '54080a7b92ce62c19ecdd582880d9ce76fde4b5a185115ae128c93b9e9b09095'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
