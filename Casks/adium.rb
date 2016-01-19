cask 'adium' do
  version '1.5.10'
  sha256 'bca3ac81d33265b71c95a3984be80715fbd98f38d7c463d0441d43a335ed399a'

  url "http://download.adium.im/Adium_#{version}.dmg"
  appcast 'https://www.adium.im/sparkle/appcast-release.xml',
          checkpoint: '68f97f3be089aa85b1073dc0ee0bd452402c83248ad2b9ff2f976f94f7df1917'
  name 'Adium'
  homepage 'https://www.adium.im/'
  license :gpl

  app 'Adium.app'

  zap delete: [
                '~/Library/Application Support/Adium 2.0',
                '~/Library/Caches/Adium',
                '~/Library/Caches/com.adiumX.adiumX',
                '~/Library/Preferences/com.adiumX.adiumX.plist',
              ]
end
