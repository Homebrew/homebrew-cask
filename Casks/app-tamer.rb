cask 'app-tamer' do
  version '2.3.2'
  sha256 'ad113cf1193f8e3ce3a431d99fdeb902c28b6b10a6dba9244710e9dab41e0c8e'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          checkpoint: 'b1b8915f3970e3132d8b0401ad43b8766cf82a36b6c5eadc0dc96e9d2a32dbbb'
  name 'AppTamer'
  homepage 'https://www.stclairsoft.com/AppTamer/'

  app 'App Tamer.app'

  zap delete: [
                '/Library/LaunchDaemons/com.stclairsoft.AppTamerAgent.plist',
                '/Library/PrivilegedHelperTools/com.stclairsoft.AppTamerAgent',
                '~/Library/Caches/com.stclairsoft.AppTamer',
                '~/Library/Preferences/com.stclairsoft.AppTamer.plist',
              ]
end
