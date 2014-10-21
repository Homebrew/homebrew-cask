class Spectacle < Cask
  version '0.8.6'
  sha256 '0fa1eb4a5798d77ec1440ad96ad169af14dbb87fe73ca22268bf5b1e18024b29'

  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  appcast 'http://spectacleapp.com/updates/appcast.xml',
          :sha256 => '42e1e1a399593ca106bb9f23084ac3112ad46703a64af7cc425fa9964bf14159'
  homepage 'http://spectacleapp.com/'
  license :mit

  app 'Spectacle.app'
  zap :delete => '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist'
end
