cask 'hstracker' do
  version '1.6.0'
  sha256 'afd0ccfa870f6c0c3fce79731b7aa3fc15b3451863162f9910f056f9b8a2381a'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
