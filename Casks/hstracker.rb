cask 'hstracker' do
  version '1.6.32'
  sha256 '98d6d008ba1d03b733c420d8c72ea4415fbe8603b606035fa53e868451af1ff7'

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
