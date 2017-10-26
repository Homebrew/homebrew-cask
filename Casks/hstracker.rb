cask 'hstracker' do
  version '1.2.1'
  sha256 '79592533e27ae9a7fab510073a0f461eebef4fb56cc44eded68b5184e449cdea'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '7ca80a3290e597c3e7a1681e418800b3de8681f7b1a62c02034d0b9f9f56b367'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
