cask 'fork' do
  version '1.0.63.2'
  sha256 'f44dcc7c46b59915e8eb559791f27decd35ae9fad07ffe8953882c8f9c3af31c'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'ab0ca52ac62306bc33221c00b5e1a803c82c9cf2252d3a32f790cb25eba85078'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap trash: [
               '~/Library/Application Support/com.DanPristupov.Fork',
               '~/Library/Caches/com.DanPristupov.Fork',
               '~/Library/Preferences/com.DanPristupov.Fork.plist',
               '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
             ]
end
