cask 'earthcoin' do
  version '1.3.3'
  sha256 'ba7db69c0f4da53ffae00fa1f593a24e4e7821e84c79e8dbeebc6bdefc6354c6'

  url "http://getearthcoin.com/downloads/EarthCoin-Qt-#{version}.dmg"
  name 'Earthcoin'
  homepage 'http://getearthcoin.com/'
  license :oss

  app 'EarthCoin-Qt.app'
end
