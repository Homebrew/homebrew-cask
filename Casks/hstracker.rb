cask 'hstracker' do
  version '1.6.31'
  sha256 '351e70c9d21a7a4cc420b1c184b6c24625ca73117fe80de32fbd8555efa403a4'

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
