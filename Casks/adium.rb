cask 'adium' do
  version '1.5.10.1'
  sha256 '12001b38428fa2441c8a31f45f7ca14fb086776de40aaccc9634f84fd28931f5'

  url "http://download.adium.im/Adium_#{version}.dmg"
  appcast 'https://www.adium.im/sparkle/appcast-release.xml',
          checkpoint: '7ffdd8960794fcc5a942f23991410c27a496a2a0eda06275efacc98970e9cd61'
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
