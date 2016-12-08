cask 'hstracker' do
  version '0.18.4.1340'
  sha256 '4ddc225e1957e9b4271e35be28b1df714961d4138ba4ba0704d3379e6c732c85'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '05a25d2eb00d51b82302b32b83165a1f8804a9eb0c13b340711b2458fc639b41'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
