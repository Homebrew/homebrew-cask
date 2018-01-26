cask 'setapp' do
  version :latest
  sha256 :no_check

  # devmate.com/com.setapp.InstallSetapp was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.setapp.InstallSetapp/InstallSetapp.zip'
  name 'Setapp'
  homepage 'https://setapp.com/'

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
