cask 'fork' do
  version '1.0.54.1'
  sha256 '415b34993615537fd0772713d0c613a5ce6e93bdb751783a3bc9b82de16b54cf'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'd1e53dee117680cc5a90e85137e8b4b7c5c228b27770651b8ff8f04f92f0b630'
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
