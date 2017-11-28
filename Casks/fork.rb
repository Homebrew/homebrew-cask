cask 'fork' do
  version '1.0.59.6'
  sha256 'c12fda82cc636315601d0ea6e039ba976114768d1063ad835a212f5e1d8c5b8c'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '839712df80ba9f8e7080aa9c022497ca4a65ee0c721758420f0090b05b36a24e'
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
