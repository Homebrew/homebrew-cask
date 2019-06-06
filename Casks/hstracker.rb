cask 'hstracker' do
  version '1.5.9'
  sha256 'dad2e1e115bdeb598733f5e66eadf24e41d59115e6f4db348ea2a68fa1bbc0ef'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
