cask 'hstracker' do
  version '1.3.4'
  sha256 '1c7fb69f5de42592d647c4fcf5665af0bbfc65363361e2b73507c307bf141d79'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '32fde260af3d782fd2be575e43b0b8c4ac59fafba2bc487b0b7eead1e7ea6068'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
