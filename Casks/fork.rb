cask 'fork' do
  version '1.0.47'
  sha256 'f874389adfb54302c87bd59817f0791ccd85c815c6af0f415c976c4ff32b502a'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '975d193698a70575f9479efa108b78464b28df67c4c7e04184428ce1b2bbb982'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap delete: [
                '~/Library/Application Support/com.DanPristupov.Fork',
                '~/Library/Caches/com.DanPristupov.Fork',
                '~/Library/Preferences/com.DanPristupov.Fork.plist',
                '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
              ]
end
