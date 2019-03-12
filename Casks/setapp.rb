cask 'setapp' do
  version '1.18.7,1547635661'
  sha256 'de0257e702975857130b2bb295a7d97201da7c8e2e7ce4abaa1d69549f46479c'

  # devmate.com/com.setapp.InstallSetapp was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.setapp.InstallSetapp/#{version.before_comma}/#{version.after_comma}/InstallSetapp-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.setapp.InstallSetapp.xml'
  name 'Setapp'
  homepage 'https://setapp.com/'

  auto_updates true

  installer manual: 'Install Setapp.app'

  uninstall script: {
                      executable: "#{appdir}/Setapp.app/Contents/Resources/SetappUninstaller.app/Contents/Resources/removeSetapp.sh",
                      sudo:       true,
                    }

  zap trash: [
               '~/Library/Application Scripts/com.setapp.DesktopClient.SetappAgent.FinderSyncExt',
               '~/Library/Caches/com.setapp.DesktopClient',
               '~/Library/Caches/com.setapp.DesktopClient.SetappAgent',
               '~/Library/Logs/Setapp',
               '~/Library/Preferences/com.setapp.DesktopClient.SetappAgent.plist',
               '~/Library/Saved Application State/com.setapp.DesktopClient.savedState',
             ]
end
