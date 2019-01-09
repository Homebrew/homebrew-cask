cask 'subsurface' do
  version '4.8.4'
  sha256 'cfeca3d917c99285c42fa6fb9bfd6f2725ce057450b8b26dbfe800278af50d2b'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
