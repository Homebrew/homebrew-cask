cask 'fork' do
  version '1.0.65'
  sha256 'c7ddbc7f9759915a7285bf2db8d52a98833105365e5ceed76965e4b9f0e4e59c'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '67202807ee361834431c6b838eb9f012def8ba2e62ea32189c7b23963fd44ae5'
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
