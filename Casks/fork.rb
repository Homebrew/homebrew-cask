cask 'fork' do
  version '1.0.84'
  sha256 '2fafa381b5672851a2395af1499e1b9cff86fca1e5dec3ea355193f28f706051'

  # forkapp.ams3.cdn.digitaloceanspaces.com/mac was verified as official when first introduced to the cask
  url "https://forkapp.ams3.cdn.digitaloceanspaces.com/mac/Fork-#{version}.dmg"
  appcast 'https://git-fork.com/update/feed.xml'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'
  binary "#{appdir}/Fork.app/Contents/Resources/fork_cli", target: 'fork'

  zap trash: [
               '~/Library/Application Support/com.DanPristupov.Fork',
               '~/Library/Caches/com.DanPristupov.Fork',
               '~/Library/Preferences/com.DanPristupov.Fork.plist',
               '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
             ]
end
