cask :v1 => 'dogecoin' do
  version '1.8.1'
  sha256 '03c10d6523689d8597933d3b3751830d9cd518f1477cd6da40804b22da0b234b'

  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-mac.zip"
  homepage 'http://dogecoin.com/'
  license :mit

  app 'Dogecoin-Qt.app'
end
