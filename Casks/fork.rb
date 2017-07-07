cask 'fork' do
  version '1.0.51'
  sha256 'beabba4ea1f407f1f02bcf966b77f7a2e5baecfe154a6e0af14115d0186c1057'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '642961c5f84bbe638bed24d67bd8f831f332bb83ec7c6b16e29ad2ca78626655'
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
