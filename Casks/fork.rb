cask 'fork' do
  version '1.0.58.3'
  sha256 '0ee2847f55d323b0cf95ecb7d6cd1ecd246ce874e0f19d6965a9d06ec39173d4'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '6767a33672dbbd505f3df85114d63f0496d2bdb040d3a2ea334fd5fe436613b4'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap delete: [
                '~/Library/Caches/com.DanPristupov.Fork',
                '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
              ],
      trash:  [
                '~/Library/Application Support/com.DanPristupov.Fork',
                '~/Library/Preferences/com.DanPristupov.Fork.plist',
              ]
end
