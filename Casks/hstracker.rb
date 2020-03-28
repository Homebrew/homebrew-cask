cask 'hstracker' do
  version '1.6.18'
  sha256 '8f3267302ec7003f2c2ac5fb1861b7bc262de594db014a8a3a796d439312767a'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
