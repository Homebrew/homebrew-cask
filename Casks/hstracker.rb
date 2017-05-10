cask 'hstracker' do
  version '1.0'
  sha256 '9cf64093216563d7ee1035a580e5394fcf32d9b494d800f9bdd3439b82b97201'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '4a2bee67bbc088e837931f46ed3ee56894fc6e2d341ed9889763cdf923a3ebe1'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
