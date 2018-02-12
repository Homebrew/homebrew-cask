cask 'fork' do
  version '1.0.63.3'
  sha256 'c263e62225c15c3b2409f016facfa7e23cd3188a4255ad8ca65f09c9495d60b5'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '8523064bbe376feef2ab6e31a060f380e04da907fdc217f44ebd4e104a6c346f'
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
