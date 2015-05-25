cask :v1 => 'leksah' do
  version '0.15.0.1-ghc-7.10.1'
  sha256 '453132da22508660bbc87c334e2716cc564a6da16c8398415cae897a6e6448ed'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
