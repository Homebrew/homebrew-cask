cask 'fork' do
  version '1.0.52'
  sha256 'f1584b9b7016d4618abe15a44b13278ecf164875b5012e6f9b5d3f60d05ad532'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '23b1312f08d0e03f2b0e94cbd5dd9ab12116aaf0e37ee36a6a3d8434772c16c5'
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
