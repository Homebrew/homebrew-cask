cask 'hstracker' do
  version '1.6.20'
  sha256 'f2b52179640fc9779823b3aadf14a0f8f06b990a0e47f29cb6dda02c9ca2f316'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
