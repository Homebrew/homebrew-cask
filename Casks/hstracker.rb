cask 'hstracker' do
  version '1.5.2a'
  sha256 'c5c9665dfc269c32f1e2c55ddc2dbdd118304ed72705b72181150da8ab316ed8'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
