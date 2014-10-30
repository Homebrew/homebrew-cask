class Adium < Cask
  version '1.5.10'
  sha256 'bca3ac81d33265b71c95a3984be80715fbd98f38d7c463d0441d43a335ed399a'

  url "http://download.adium.im/Adium_#{version}.dmg"
  appcast 'http://www.adium.im/sparkle/update.php',
          :sha256 => 'cfb624cfa2f2526905ed7cb0eb39da98c73ef3c4633618348c00f12b2d44e19a'
  homepage 'https://www.adium.im/'
  license :gpl

  app 'Adium.app'

  zap :delete => [
                  '~/Library/Application Support/Adium 2.0',
                  '~/Library/Caches/Adium',
                  '~/Library/Caches/com.adiumX.adiumX',
                  '~/Library/Preferences/com.adiumX.adiumX.plist',
                 ]
end
