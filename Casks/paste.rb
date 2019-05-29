cask 'paste' do
  version '2.4.3,27'
  sha256 'afd5b5188763e15001d1acdce9c3df66a9887dbb9abfc6768ac56bd103220361'

  # rink.hockeyapp.net/api/2/apps/f44b38c5d9824344acdb920513bbbf8f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/f44b38c5d9824344acdb920513bbbf8f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/f44b38c5d9824344acdb920513bbbf8f'
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
