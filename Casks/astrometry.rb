cask 'astrometry' do
  version '1.2'
  sha256 'cd3ca2d2e18d065e7db5741acb67f85407dfe839ad50720cba7aa11fc14f5366'

  url "http://download.cloudmakers.eu/Astrometry_#{version}.dmg"
  name 'Astrometry'
  homepage 'http://www.cloudmakers.eu/'

  app 'Astrometry.app'
end
