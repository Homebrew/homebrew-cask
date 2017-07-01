cask 'fork' do
  version '1.0.50'
  sha256 '2fdcc85463e07d493cab12099ba8c05e248ce724b673e3531006051514a9bbed'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '224c28c892578d51a4b9041632b85957f9072ccb9d6c2b362a28b87bfa921ea8'
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
