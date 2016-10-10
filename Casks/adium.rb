cask 'adium' do
  version '1.5.10.2'
  sha256 'ea1a1016a383c59198c43f37576edb0045e391f46ca5402b0f6365e9d5d7f395'

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
