cask 'fork' do
  version '1.0.52.1'
  sha256 '76db690b6be6391dd26b4cd0c6650747cd6cc15a79ca5fd71389b5e84e1f0ae8'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '3e16aa6fae38c6d464665ab18032c9669d73ca6a84341821c146f3fd81460576'
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
