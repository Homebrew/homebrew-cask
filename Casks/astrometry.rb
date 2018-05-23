cask 'astrometry' do
  version '1.6'
  sha256 '601ccb352c07c46f97ab14b19308b669e218b433b9bc7eeafb2cdd6c5ed63391'

  url "http://download.cloudmakers.eu/Astrometry_#{version}.dmg"
  name 'Astrometry'
  homepage 'http://www.cloudmakers.eu/'

  app 'Astrometry.app'
end
