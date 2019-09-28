cask 'hook' do
  version '2716,1569530925'
  sha256 'b937bb85cec76eaee51bf474c7f4ad2a078e7403bb98df7133ec07a0d57e281d'

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
