cask 'fork' do
  version '1.0.62'
  sha256 '642f4266485194b3da4d467315383ccf505e9d2e35ac858381b0d7b67227f191'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'fbbf99f8b5a22a4c0693177644bae1801649bd8a04c40043d9d04caef10cb16f'
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
