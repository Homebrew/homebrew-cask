cask 'hstracker' do
  version '1.4.2'
  sha256 '88e941f01b6154cdb859995b84bc82dbe72a1e2fb1752dba6c6ad40bc8b56fac'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
