cask 'hstracker' do
  version '1.3.3'
  sha256 '9ffd18712ef1431a09f4d86922ed4073bebccf79ee1f89ac5d6e3c9282177d33'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '6511d137f4071ef2358b28bd693a8abcf258b62be8d90b0c3b2eb2c8152ceffe'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
