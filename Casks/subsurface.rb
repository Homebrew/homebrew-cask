cask 'subsurface' do
  version '4.8.6'
  sha256 'f9d2c8cd2dd8205a24cc29e87a674e1160b02a4cfc4669e33ae5e7475917c3eb'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
