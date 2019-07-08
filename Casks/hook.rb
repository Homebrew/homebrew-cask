cask 'hook' do
  version '2545,1562389569'
  sha256 'd867ab7bff6dc2a7fc6046cd9975d3ba0f523692ea38a77f7b6a17e93be51b01'

  # dl.devmate.com/com.cogsciapps.hook was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.cogsciapps.hook/#{version.before_comma}/#{version.after_comma}/Hook-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.cogsciapps.hook.xml'
  name 'Hook'
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
