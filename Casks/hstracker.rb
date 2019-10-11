cask 'hstracker' do
  version '1.6.7'
  sha256 '3bcf9e64d97f6b0579d241459a4e70ab8763f4c0d9d153ef6b15d380728350e2'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
