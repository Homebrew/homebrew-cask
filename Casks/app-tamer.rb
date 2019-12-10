cask 'app-tamer' do
  version '2.4.8'
  sha256 '504f69c65fe16879abf9fc48bca503119e4cd2620e35cb1a75fa9dca96323d08'

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
