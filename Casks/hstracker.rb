cask 'hstracker' do
  version '1.3.2'
  sha256 '3af4589d56a7693573e7ea67a5a97f5cc2b645086a76cc39c9667f4a272127cf'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: 'b85e2c04ac1a8b66099727c539592d7c4a8b0c6008f9a892a0614e1ae568fa0d'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
