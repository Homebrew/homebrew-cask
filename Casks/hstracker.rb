cask 'hstracker' do
  version '1.3.1'
  sha256 '00fac6fd3bd1b704099008e54c99d8026fbb5b3cf7abe87c037e5d99530cc200'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '74bdb6eb9833926c1f07abbf43ff32860c6e829e545a46e44a995b543799644a'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
