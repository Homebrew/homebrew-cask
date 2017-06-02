cask 'hstracker' do
  version '1.0.2'
  sha256 '96754067f819a580407096d54557ddbab1a82542a4c20f601d6b2c95cb9e108b'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '7a26f0bb02dc4c51cc9090d2979c1d539b1af9d3ddc7a861c57f4ee54dcb12c4'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
