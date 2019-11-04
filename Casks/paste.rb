cask 'paste' do
  version '2.5.2,7'
  sha256 '6a95be2b3eacb42930d271bb7676e2b0c2c5b1b2079ef840ea90b7e72030c6b0'

  # rink.hockeyapp.net/api/2/apps/d6efdf44318a43ebb2130e89477625c8 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/d6efdf44318a43ebb2130e89477625c8/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://pasteapp.me/mac/update-feed'
  name 'Paste'
  homepage 'https://pasteapp.me/'

  depends_on macos: '>= :sierra'

  app 'Paste.app'

  uninstall launchctl: 'com.wiheads.paste.loginitem',
            quit:      'com.wiheads.paste'

  zap trash: [
               '~/Library/Application Support/com.wiheads.paste',
               '~/Library/Application Support/Paste',
               '~/Library/Caches/com.wikiheads.paste',
               '~/Library/Logs/Paste',
               '~/Library/Preferences/com.wikiheads.paste.plist',
             ]
end
