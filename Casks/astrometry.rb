cask 'astrometry' do
  version '1.4'
  sha256 '61b83f44b0f83f3c1fa68b5aa4804d95691508e1f0ee0357653e7d1dfb77cebe'

  url "http://download.cloudmakers.eu/Astrometry_#{version}.dmg"
  name 'Astrometry'
  homepage 'http://www.cloudmakers.eu/'

  app 'Astrometry.app'
end
