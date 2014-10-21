class Spectacle < Cask
  version '0.8.6'
  sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'

  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  appcast 'http://spectacleapp.com/updates/appcast.xml',
          :sha256 => '42e1e1a399593ca106bb9f23084ac3112ad46703a64af7cc425fa9964bf14159'
  homepage 'http://spectacleapp.com/'
  license :mit

  app 'Spectacle.app'
  zap :delete => '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist'
end
