cask 'setapp' do
  version '1.14.2,1528985269'
  sha256 '9a17ef57174a5033f6cbe371eba98042f0052eb41d508ab773644d618af62fbb'

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
