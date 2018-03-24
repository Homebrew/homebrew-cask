cask 'hstracker' do
  version '1.3.5'
  sha256 '610ff12a929d71f6ef2c17eb1b74b6a4cf198e59b0e195896756595c1534b1e2'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: 'a444c12b43cd494206b62aee8333b85a097bba7600ef2617d436ac2a5146a8bb'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
