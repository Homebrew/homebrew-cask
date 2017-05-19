cask 'fork' do
  version '1.0.46'
  sha256 '32f9f519203108e8c7157c1ce9c6fff34faa05e6b01f0aff5a4e12691ce12bd5'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'aa92b57b4957464aa42e12ace9546e2f54958cc5e867352b88a91cb49e3749ac'
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
