cask 'fork' do
  version '1.0.68.4'
  sha256 'da787440ca93a5b85fdce1ffe535a43f3a3962bfafd6f24e852042d1109bbe30'

  url 'https://git-fork.com/update/files/Fork.dmg'
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
