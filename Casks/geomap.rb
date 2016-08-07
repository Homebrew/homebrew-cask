cask 'geomap' do
  version :latest
  sha256 :no_check

  url 'http://www.geomapapp.org/MapApp/GeoMapApp.dmg'
  name 'GeoMapApp'
  homepage 'http://www.geomapapp.org'
  license :gratis

  app 'GeoMapApp.app'

  zap delete: '~/.GMA'
end
