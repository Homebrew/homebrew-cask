cask 'hstracker' do
  version '1.6.10'
  sha256 '74e3de080e2eae68b434fabace88c4700a33d4e9ebd53ad57c80055a9c3e8b2c'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
