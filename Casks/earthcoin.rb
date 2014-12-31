cask :v1 => 'earthcoin' do
  version '1.3.2'
  sha256 '5e5c52e1d5d27af5de0d544d95426477be31dc47df1b7ab834f0c57b27e8d16b'

  url "https://earthcoin.s3.amazonaws.com/releases/#{version}/macosx/EarthCoin-Qt-#{version}.dmg"
  homepage 'http://getearthcoin.com/'
  license :oss

  app 'EarthCoin-Qt.app'
end
