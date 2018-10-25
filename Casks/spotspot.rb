cask 'spotspot' do
  version '3.1.1'
  sha256 'a50858471d5cfc866ccf83107865f2291b2ea2ad9022e570062d002d1fe3749d'

  # github.com/will-stone/SpotSpot was verified as official when first introduced to the cask
  url "https://github.com/will-stone/SpotSpot/releases/download/v#{version}/SpotSpot-#{version}.dmg"
  appcast 'https://github.com/will-stone/SpotSpot/releases.atom'
  name 'SpotSpot'
  homepage 'https://will-stone.github.io/SpotSpot/'

  app 'SpotSpot.app'
end
