cask 'hstracker' do
  version '1.6.33'
  sha256 'b4014aa13de9dc18455e9cdeb35d24465d3bd4710a641b8b515992f01b3bba8b'

  # github.com/HearthSim/HSTracker/ was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
