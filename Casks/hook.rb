cask 'hook' do
  version '1.4,13'
  sha256 '60b25c4c5c160ce1360c55700d5aaf6357fc76a931aeae86a8e2e2c0cfdd9564'

  # rink.hockeyapp.net/api/2/apps/a77a1a877d69435d90ea7365b2f7bddb was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/a77a1a877d69435d90ea7365b2f7bddb/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/a77a1a87-7d69-435d-90ea-7365b2f7bddb'
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
