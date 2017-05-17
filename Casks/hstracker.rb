cask 'hstracker' do
  version '1.0.1'
  sha256 'b4b00999888159541b38971315277e2b09079300dd51804274fbd30e35693ffd'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '5cea139c7ba0cf899ee177e4516d340af733cd321b20709689e342279c360b66'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
