cask 'fork' do
  version '1.0.47.1'
  sha256 '8d3d7dd9bd20d00c3e777993a9ed501eb6016acadfba8943fef47e4cc169b7de'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '2fed1e0f792b7cc858ea0c5a7e199b7eb44f49b6bf611e2d01378f0823021f75'
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
