cask 'leksah' do
  version '0.15.1.4-ghc-7.10.2'
  sha256 '24eb2b4dc7cee8b30029ae6e76d53ec1f7ec3eb0ff3c5d3b86d6e036e10010d1'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
