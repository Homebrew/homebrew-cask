cask 'hook' do
  version '2947,1575524372'
  sha256 '19e5279af842c15029898b0f0d66dfbc6e6c8a872bc174cee3be12fe783b5ece'

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
