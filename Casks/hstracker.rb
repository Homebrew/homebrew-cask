cask 'hstracker' do
  version '0.19.1462'
  sha256 'bf5fe3ed2b95ec4edb83cdb48fe09d720fa29b9bdaf39a2193f66874233c91d7'

  # github.com/HearthSim/HSTracker was verified as official when first introduced to the cask
  url "https://github.com/HearthSim/HSTracker/releases/download/#{version}/HSTracker.app.zip"
  appcast 'https://github.com/HearthSim/HSTracker/releases.atom',
          checkpoint: 'b4b7e236a34ede43524224d3771d333ad4a3b65fe0a536806016fd061ff1e3bd'
  name 'Hearthstone Deck Tracker'
  homepage 'https://hsdecktracker.net/'

  app 'HSTracker.app'
end
