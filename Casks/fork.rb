cask 'fork' do
  version '1.0.45.1'
  sha256 '724af68aa6daffd04ba29b7f9f0a96d7a08a5df22a6cfdbed09d0ddc00e3cdfd'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '2a9aa119e228243955ea8aea42a04e7a146fab69c3b3985a6e0e3f6572aebd53'
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
