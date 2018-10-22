cask 'spotspot' do
  version '3.1.1'
  sha256 'a50858471d5cfc866ccf83107865f2291b2ea2ad9022e570062d002d1fe3749d'

  url 'https://github.com/will-stone/SpotSpot/releases/download/v3.1.1/SpotSpot-3.1.1.dmg'
  appcast 'https://github.com/will-stone/SpotSpot/releases.atom'
  name 'SpotSpot'
  homepage 'https://github.com/will-stone/SpotSpot'

  app 'SpotSpot.app'
end
