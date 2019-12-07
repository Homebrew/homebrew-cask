cask 'subsurface' do
  version '4.9.3'
  sha256 '00f6b59d75c6435f64045d0b452be9e61223592761a0d88c4f93c45330308fab'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast 'https://subsurface-divelog.org/download/'
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
