cask :v1 => 'leksah' do
  version '0.15.0.2-ghc-7.10.1'
  sha256 'd5f186f5efe0f95665b48a1ac05625390bb40ba63d5d1b96018555d60139bcc8'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'
  license :oss

  app 'Leksah.app'
end
