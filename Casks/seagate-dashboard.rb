cask 'seagate-dashboard' do
  version :latest
  sha256 :no_check

  url 'https://www.seagate.com/files/www-content/support-content/downloads/_shared/downloads/Seagate_Dashboard_Installer.dmg'
  name 'Seagate Dashboard'
  homepage 'https://www.seagate.com/support/software/dashboard/'

  auto_updates true

  installer script: 'Dashboard.app/Contents/MacOS/Dashboard'

  uninstall quit:   'com.seagate.dashboard',
            delete: '/Applications/Seagate Dashboard.app'

  zap trash: ['~/Library/Application Support/Seagate Dashboard*',
              '~/Library/Application Support/CrashReporter/Seagate Dashboard_*',
              '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.seagate.dashboard.sfl',
              '~/Library/Caches/com.seagate.dashboard',
              '~/Library/LaunchAgents/com.seagate.dashboard.plist',
              '~/Library/Preferences/com.seagate.dashboard.plist',
              '/Library/Logs/DiagnosticReports/Seagate Dashboard_*']
end
