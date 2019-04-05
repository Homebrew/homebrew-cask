cask 'app-tamer' do
  version '2.4.2'
  sha256 'be81f3c8d553de827a81ffb3e94697635d1783416339142e458771d65ce00175'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT'
  name 'AppTamer'
  homepage 'https://www.stclairsoft.com/AppTamer/'

  app 'App Tamer.app'

  zap trash: [
               '/Library/LaunchDaemons/com.stclairsoft.AppTamerAgent.plist',
               '/Library/PrivilegedHelperTools/com.stclairsoft.AppTamerAgent',
               '~/Library/Caches/com.stclairsoft.AppTamer',
               '~/Library/Preferences/com.stclairsoft.AppTamer.plist',
             ]
end
