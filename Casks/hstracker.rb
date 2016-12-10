cask 'hstracker' do
  version '0.18.5.1367'
  sha256 'e98417501ac6f1e38314a1a208326461bfb2a04fb4a2ec37d7afdc6c4870ff38'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: 'b86fdb031f5333a636556863898417a2e7a29bd13666d395a574a32197eee345'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
