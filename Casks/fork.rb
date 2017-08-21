cask 'fork' do
  version '1.0.54'
  sha256 '628e82a70b4b19017174da8566fe4d623afcbb4535fa140b5e1589c9c39adabf'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '32eedd78d300af84720630c15f785708efb7b08f72df13264f9db51440b5a389'
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
