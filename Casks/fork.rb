cask 'fork' do
  version '1.0.60'
  sha256 '4df2ec544725510a0fbbe183a34d739840e1582c4497d116e6cf0e1067e4ddc9'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '197a18168c22e503bdfe7b967e635c0ba5449636785e8cea9bc7fddf3df7b5a3'
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
