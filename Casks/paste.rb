cask 'paste' do
  version '2.5.3,8'
  sha256 '7283aa7ab57ff9d7fa05b12d961080357956a6dd9a8047293926aa6c8ed38924'

  # rink.hockeyapp.net/api/2/apps/d6efdf44318a43ebb2130e89477625c8 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/d6efdf44318a43ebb2130e89477625c8/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://pasteapp.me/mac/update-feed'
  name 'Paste'
  homepage 'https://pasteapp.me/'

  depends_on macos: '>= :high_sierra'

  app 'Paste.app'

  uninstall launchctl: 'com.wiheads.paste.loginitem',
            quit:      'com.wiheads.paste'

  zap trash: [
               '~/Library/Application Scripts/com.wiheads.paste',
               '~/Library/Application Scripts/com.wiheads.paste.loginitem',
               '~/Library/Application Support/com.wiheads.paste*',
               '~/Library/Application Support/Paste',
               '~/Library/Application Support/Paste Helper',
               '~/Library/Caches/com.wiheads.paste',
               '~/Library/Containers/com.wiheads.paste',
               '~/Library/Containers/com.wiheads.paste.loginitem',
               '~/Library/Group Containers/*.com.wiheads.paste*',
               '~/Library/Logs/Paste',
               '~/Library/Preferences/com.wiheads.paste.plist',
               '~/Library/Preferences/com.wiheads.paste-helper.plist',
             ]
end
