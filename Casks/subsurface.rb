cask 'subsurface' do
  version '4.7.4'
  sha256 '44c2b7ef5c687b6da06f3a75a88752aed0b082f07f68a13a3d851b576e664474'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
