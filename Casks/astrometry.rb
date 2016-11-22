cask 'astrometry' do
  version '1.1'
  sha256 '7d9804b8c7a3ba5a97ce8ab91c94f6ba14c128c9b9ca9ad87bc61a2c033b1494'

  url "http://download.cloudmakers.eu/Astrometry_#{version}.dmg"
  name 'Astrometry'
  homepage 'http://www.cloudmakers.eu'

  app 'Astrometry.app'
end
