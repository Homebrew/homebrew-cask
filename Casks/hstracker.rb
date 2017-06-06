cask 'hstracker' do
  version '1.0.3'
  sha256 '048e3dc4080adf51858cf430b136598daa22fb43743e3ba06d519086f1bbf192'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: 'cc21c4c1bd2e7d03df1b2b6727e0731d7faf9a77e5766eb45bc0e09b7e111390'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
