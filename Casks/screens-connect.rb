cask 'screens-connect' do
  version '4.1.2'
  sha256 'eea3db7530f5d0db7b60d3c633ebd6ff887d3d6fdaa23aceb989632b77677721'

  # edovia.com was verified as official when first introduced to the cask
  url "https://download.edovia.com/screensconnect/ScreensConnect_#{version}.zip"
  appcast 'https://updates.edovia.com/com.edovia.screens.connect.4.mac/appcast.xml',
          checkpoint: '0daebdac3a33c0983a11659087162e0229911b183304f9b37e43e9e52dfe8570'
  name 'Screens Connect'
  homepage 'https://screensconnect.com'

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
