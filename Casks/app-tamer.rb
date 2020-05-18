cask 'app-tamer' do
  version '2.5.1'
  sha256 'dc705190efa7658652202e0cb50293b2c8fa02443da943d61641405db7ecd4b0'

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
