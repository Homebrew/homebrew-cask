cask 'fork' do
  version '1.0.52.2'
  sha256 'd75267f2564fe7bdde57313460b8feac3e65ccef746974589b2e46462dcb21ea'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'a80dd32c29ca47a81b52aaf709f89321882b70402589e99be875c6284861a73f'
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
