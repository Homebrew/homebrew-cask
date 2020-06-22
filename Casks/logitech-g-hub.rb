cask 'logitech-g-hub' do
  version :latest
  sha256 :no_check

  # logi.com was verified as official when first introduced to the cask
  url 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.zip'
  name 'Logitech G HUB'
  homepage 'https://www.logitechg.com/en-us/innovation/g-hub.html'

  installer script: {
                      executable: 'lghub_installer.app/Contents/MacOS/lghub_installer',
                      args:       ['--silent'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/lghub.app/Contents/Frameworks/lghub_updater.app/Contents/MacOS/lghub_updater',
                      args:       ['--uninstall'],
                    }

  zap trash: [
               '~/Library/Application Support/lghub',
               '~/Library/Caches/com.logi.ghub.installer',
               '~/Library/Preferences/com.logi.ghub.plist',
               '~/Library/Saved Application State/com.logi.ghub.savedState',
             ]
end
