cask 'hstracker' do
  version '1.2.4'
  sha256 '72b4695444ca43eb4fe66ca285efaa9479da36ee1634b1809d8a2724d6911b07'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: '473ad9fe2b90ee2b4c8323c4b7cebb965063297fdda6f6659564331b1c069aea'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
