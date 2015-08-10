cask :v1 => 'leksah' do
  version '0.15.1.1-ghc-7.10.1'
  sha256 'a5f83ac952eefadbeb3ebbc36ed4853cf5ca7192dd116ac3a1128460dca7fde0'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
