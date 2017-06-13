cask 'cleanapp' do
  if MacOS.version <= :lion
    version '4.0.8'
    sha256 'e77359586731e1ae863351846afc9fd34a7b9774625122001c0d92593a340ff1'
  else
    version '5.1.2'
    sha256 '8ec496553f19deb6207cd33a5ec6b189543c46b7800f90d37880aefe121504a4'
  end

  url "https://download.syniumsoftware.com/CleanApp/CleanApp%20#{version}.dmg"
  name 'Synium Software CleanApp'
  homepage 'http://www.syniumsoftware.com/cleanapp'

  app 'CleanApp.app'

  zap delete: [
                '/Library/Application Support/CleanApp',
                '/Library/LaunchDaemons/com.syniumsoftware.CleanAppDaemon.plist',
                '~/Library/Application Support/CleanApp',
                '~/Library/Caches/com.syniumsoftware.CleanApp',
                '~/Library/PreferencePanes/CleanApp Logging Service.prefPane',
                '~/Library/Preferences/com.syniumsoftware.CleanApp.plist',
                '~/Library/Preferences/com.syniumsoftware.CleanAppDaemon.plist',
                '~/Library/Preferences/com.syniumsoftware.stats_config.plist',
                '~/Library/Saved Application State/com.syniumsoftware.CleanApp.savedState',
              ]
end
