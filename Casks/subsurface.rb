cask 'subsurface' do
  version '4.7.7'
  sha256 'd08bf9c855940ab4a52e925aaeef3dd66fa30bd33f6b2a6d63619624277e183a'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
