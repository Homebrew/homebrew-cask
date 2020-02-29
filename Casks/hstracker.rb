cask 'hstracker' do
  version '1.6.16'
  sha256 '75b8a3f2e41a83b6500ee9498c3644f4b6c752b9920d10bad8e27614ff0dcdfe'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
