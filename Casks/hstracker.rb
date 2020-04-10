cask 'hstracker' do
  version '1.6.22'
  sha256 '9e6a1a91978551639af16a00011fb0c97e0f8132f2b1753e3063d359aa1eafa3'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
