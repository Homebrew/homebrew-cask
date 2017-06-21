cask 'fork' do
  version '1.0.49'
  sha256 '3a0fb8575557020457f1863b7afcacaa11c8a4c2db9406e560be23a8ecc8a62f'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '54ae268bbfe5c0ef5bdc5c06632ee623fa02919163490973d6330145ac3a5d00'
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
