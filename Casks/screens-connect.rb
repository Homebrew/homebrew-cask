cask 'screens-connect' do
  version '4.2'
  sha256 '87546e86b647c03ccea2cf3f0f1dff0ab8adc33e19888077ea35956fb7848e09'

  # edovia.com was verified as official when first introduced to the cask
  url "https://download.edovia.com/screensconnect/ScreensConnect_#{version}.zip"
  appcast 'https://updates.edovia.com/com.edovia.screens.connect.4.mac/appcast.xml',
          checkpoint: '278cc7056cc914f6d5e555e584cf241e096d9138e0f9bda50fcd68aeed4e8b75'
  name 'Screens Connect'
  homepage 'https://screensconnect.com/'

  depends_on macos: '>= :el_capitan'

  app 'Screens Connect.app'

  # Uninstall script can fail when trying to remove legacy PKGIDS
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8833
  uninstall quit:      'com.edovia.Screens-Connect',
            launchctl: [
                         'com.edovia.Screens-Connect.launcher',
                         'com.edovia.screens.connect',
                       ],
            script:    {
                         executable:   'Screens Connect.app/Contents/Resources/sc-uninstaller.tool',
                         must_succeed: false,
                       }

  zap delete: [
                '~/Library/Preferences/com.edovia.Screens-Connect.plist',
                '~/Library/Preferences/com.edovia.ScreensConnect.Shared.plist',
              ]
end
