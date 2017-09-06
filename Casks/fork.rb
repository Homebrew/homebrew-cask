cask 'fork' do
  version '1.0.55'
  sha256 '1f7a052cd9aecf0075156e61bd3f245ba76ee7730e97db44b4f5799dad4a963f'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '0c30d4bbab7c4e0b04405d3494eee9a3d33778696172128f5721687e84472d0c'
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
