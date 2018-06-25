cask 'screens-connect' do
  version '4.7.5790,1523046092'
  sha256 '19cbf3dbbd7a2028b95efe1d6ccae8051f0ece032188195f08b56d02cc86384d'

  # dl.devmate.com/com.edovia.Screens-Connect was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.Screens-Connect/#{version.patch}/#{version.after_comma}/ScreensConnect-#{version.patch}.zip"
  appcast 'https://updates.devmate.com/com.edovia.Screens-Connect.xml'
  name 'Screens Connect'
  homepage 'https://screensconnect.com/'

  depends_on macos: '>= :el_capitan'

  app 'Screens Connect.app'

  # Uninstall script can fail when trying to remove legacy PKGIDS
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/8833
  uninstall quit:      'com.edovia.Screens-Connect',
            launchctl: [
                         'com.edovia.Screens-Connect.launcher',
                         'com.edovia.screens.connect',
                       ],
            script:    {
                         executable:   "#{appdir}/Screens Connect.app/Contents/Resources/sc-uninstaller.tool",
                         must_succeed: false,
                         sudo:         true,
                       }

  zap trash: [
               '~/Library/Preferences/com.edovia.Screens-Connect.plist',
               '~/Library/Preferences/com.edovia.ScreensConnect.Shared.plist',
             ]
end
