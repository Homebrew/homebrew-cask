cask 'fork' do
  version '1.0.85.2'
  sha256 '73830ab29877b7eebb0704101bcbe8e7d6f6a5e4dd672bf5beea98f98347ba2a'

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
