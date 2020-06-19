cask 'fork' do
  version '1.0.95'
  sha256 '35234feac16103151fa7e4c700a5dddca2a8a38b20fce467bab9701e5ce4ee33'

  # forkapp.ams3.cdn.digitaloceanspaces.com/mac/ was verified as official when first introduced to the cask
  url "https://forkapp.ams3.cdn.digitaloceanspaces.com/mac/Fork-#{version}.dmg"
  appcast 'https://git-fork.com/update/feed.xml'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'
  binary "#{appdir}/Fork.app/Contents/Resources/fork_cli", target: 'fork'

  zap trash: [
               '~/Library/Application Support/Fork',
               '~/Library/Application Support/com.DanPristupov.Fork',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.danpristupov.fork.sfl2',
               '~/Library/Caches/com.DanPristupov.Fork',
               '~/Library/Cookies/com.DanPristupov.Fork.binarycookies',
               '~/Library/Logs/Fork.log',
               '~/Library/Preferences/com.DanPristupov.Fork.plist',
               '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
               '~/Library/WebKit/com.DanPristupov.Fork',
             ]
end
