cask 'setapp' do
  version '2.5.1,1579269411'
  sha256 '9852a47b798f7c46ca8c2610f6035f60d99cd6ba23bb74a2e2586e0039854e97'

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
