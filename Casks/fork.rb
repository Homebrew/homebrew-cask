cask 'fork' do
  version '1.0.56.1'
  sha256 '8eed688e1f485c0359f4aabb10738c90cdd463d49e82383da00e29260ee5bde0'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'f2dcdba5cba2673311590ed3f757e6ac3abfa6a75b05af899d9061508ebe2a52'
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
