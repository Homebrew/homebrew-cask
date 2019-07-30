cask 'subsurface' do
  version '4.9.0'
  sha256 'be29cabb510307e427e7c44335915730dcbea7b7f11b09d987bded50262e37c0'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
