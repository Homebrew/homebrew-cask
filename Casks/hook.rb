cask 'hook' do
  version '2888,1572942499'
  sha256 'ea7c0a3897e0346a16d759d58800c093349b2161634218adc774438c3f1d3cfc'

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
