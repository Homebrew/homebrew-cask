cask 'fork' do
  version '1.0.53.1'
  sha256 '2a87203e592c5f815f13cab1a84558da9021731206a0a33746faf8fcdc3523b5'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '15550688e0e84df51c22580270f0c6c6fdac6c5516589dc6273a671b44601f63'
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
