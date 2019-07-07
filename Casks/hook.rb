cask 'hook' do
  version '2545'
  sha256 'd867ab7bff6dc2a7fc6046cd9975d3ba0f523692ea38a77f7b6a17e93be51b01'

  # dl.devmate.com/com.cogsciapps.hook/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.cogsciapps.hook/#{version}/1562389569/Hook-#{version}.dmg"
  appcast 'https://updates.devmate.com/com.cogsciapps.hook.xml'
  # the url is badwrongandbroken, because the pubDate in the appcast is (varyingly) 2-4 minutes earlier than the
  # unix epoch string in the URL.
  name 'Hook for macOS'
  homepage 'https://hookproductivity.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Hook.app'

  uninstall launchctl: 'com.cogsciapps.hookautolaunchhelper',
            quit:      'com.cogsciapps.hook'

  zap trash:
             [
               '~/Library/Caches/com.cogsciapps.hook',
               '~/Library/Logs/com.cogsciapps.hook',
               '~/Library/Preferences/com.cogsciapps.hook.plist',
             ]
end
