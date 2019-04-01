cask 'astrometry' do
  version '1.8'
  sha256 '689cefa93d6d6e941a2972ba4bbfc8668ee4487f34b8ef3e9f2f98a00ed01cfc'

  url "http://download.cloudmakers.eu/Astrometry_#{version}.dmg"
  appcast 'http://www.cloudmakers.eu/astrometry/'
  name 'Astrometry'
  homepage 'http://www.cloudmakers.eu/astrometry/'

  app 'Astrometry.app'
end
