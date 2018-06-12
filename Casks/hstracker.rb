cask 'hstracker' do
  version '1.4.1'
  sha256 '2766d91e3b83b64aa4c33dd7849ef3b48c5c437e5fd7a419d166a0148a19ecc9'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
