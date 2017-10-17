cask 'app-tamer' do
  version '2.3.3'
  sha256 '9fe9bda04d2dd33c83598fa90fe579631be79e1bb1c473c10d17d2a157a977af'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          checkpoint: 'bb25b0c3eb8ae2c2df14d62fa01e6c2a987cae7b0dfcc280b51e7cf4d7f426e6'
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
