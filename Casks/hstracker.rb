cask 'hstracker' do
  version '1.4.0'
  sha256 '2fe9038d059bf63cc4a8a8a19c3561a06db97c6243c9769554ed16ff6cc5699f'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: 'de94f5a14129c212b09fceca9f151e53bc10295bac67d484044683c2ed39b8ee'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
