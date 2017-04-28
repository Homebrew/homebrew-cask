cask 'adium' do
  version '1.5.10.4'
  sha256 '31fa3fd32b86dd3381b60e0d5aafbc2a9452036f0fb4963bffbc2a6c64a9458b'

  url "http://download.adium.im/Adium_#{version}.dmg"
  appcast 'https://www.adium.im/sparkle/appcast-release.xml',
          checkpoint: 'c0e7148f802efc6a1d255c420ec386c7de1fd1f4cd096970986a8bf891c5f342'
  name 'Adium'
  homepage 'https://www.adium.im/'

  app 'Adium.app'

  zap delete: [
                '~/Library/Application Support/Adium 2.0',
                '~/Library/Caches/Adium',
                '~/Library/Caches/com.adiumX.adiumX',
                '~/Library/Preferences/com.adiumX.adiumX.plist',
              ]
end
