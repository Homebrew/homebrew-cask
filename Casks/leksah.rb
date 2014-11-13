cask :v1 => 'leksah' do
  version '0.14.1.0-ghc-7.8.3'
  sha256 '52e0441a6cdb00f6bb96bd79444fe5ceb07812488e9797698278a93f833bae58'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
