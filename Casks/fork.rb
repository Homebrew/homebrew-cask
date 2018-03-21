cask 'fork' do
  version '1.0.65.1'
  sha256 '9582a2a7cf2a43e6a167199a0520d145c130dcf7555df7901b0f02e2611d75f6'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'fa2ef7f0fc096180267bb2332af0f0074d77088e7bfe1f00e8f4b39beb5e60eb'
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
