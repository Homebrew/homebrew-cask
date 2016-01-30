cask 'adium' do
  version '1.5.10.1'
  sha256 '12001b38428fa2441c8a31f45f7ca14fb086776de40aaccc9634f84fd28931f5'

  url "http://download.adium.im/Adium_#{version}.dmg"
  appcast 'https://www.adium.im/sparkle/appcast-release.xml',
          checkpoint: 'ec41726e4a4c4384d79f4cd336708b71e362c1b275ba82d605db9ef7ef80d2ee'
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
