cask 'app-tamer' do
  version '2.3.5'
  sha256 '29350e7b5bbc5d4bfcd1e7baff412a57375fdb5130115c42964f8f3d10a04506'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          checkpoint: 'ddbfc8bdff25e67c5e16fbe68410c38f87b0da14e8e25941152bad7a74a25782'
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
