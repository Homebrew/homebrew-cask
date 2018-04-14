cask 'fork' do
  version '1.0.66'
  sha256 'adc8d252fdbe9aa6bca73f3e65b5fbf43ec5a00c6a6a90fc1e51b537d4737a01'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'ffc21289b3dacc8c02940ebb7df2c36ef6283884f79da6a8ee6371a2ae009e5a'
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
