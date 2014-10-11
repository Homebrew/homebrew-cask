class Adium < Cask
  version '1.5.10'
  sha256 'bca3ac81d33265b71c95a3984be80715fbd98f38d7c463d0441d43a335ed399a'

  url "http://download.adium.im/Adium_#{version}.dmg"
  appcast 'http://www.adium.im/sparkle/update.php'
  homepage 'https://www.adium.im/'
  license :oss

  app 'Adium.app'

  zap :delete => [
                  '~/Library/Application Support/Adium 2.0',
                  '~/Library/Caches/Adium',
                  '~/Library/Caches/com.adiumX.adiumX',
                  '~/Library/Preferences/com.adiumX.adiumX.plist',
                 ]
end
