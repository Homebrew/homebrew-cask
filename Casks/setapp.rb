cask 'setapp' do
  version '2.3.4,1573055108'
  sha256 '1ebb3fd27672a6b5d6dc1cbdc27f13e91d598f63698a8641b6dee5fc96690b04'

  # devmate.com/com.setapp.InstallSetapp was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.setapp.InstallSetapp/#{version.before_comma}/#{version.after_comma}/InstallSetapp-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.setapp.InstallSetapp.xml'
  name 'Setapp'
  homepage 'https://setapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

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
