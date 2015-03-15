cask :v1 => 'leksah' do
  version '0.14.4.0-ghc-7.8.3'
  sha256 '921ac4eb7bbc17e76baf9f870d9b99006418fba21f2161907040ed240d3324fc'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
