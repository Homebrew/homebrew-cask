cask 'earthcoin' do
  version '1.3.3'
  sha256 'c1af2c5d777012cc96474217733475515a9bf9869d3c7dae0ca9167c1dbe702f'

  url "http://getearthcoin.com/downloads/EarthCoin-Qt-#{version}.dmg"
  name 'Earthcoin'
  homepage 'http://getearthcoin.com/'

  app 'EarthCoin-Qt.app'
end
