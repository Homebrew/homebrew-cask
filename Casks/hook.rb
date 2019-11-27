cask 'hook' do
  version '2892,1573247948'
  sha256 '38ae0af0c08e26f8925060a97b442a7e84b44d050282745587c59162c74f8ff3'

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
