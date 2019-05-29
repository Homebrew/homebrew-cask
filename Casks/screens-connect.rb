cask 'screens-connect' do
  version '4.8.6130,1552077038'
  sha256 '5d59d48242198cebdc4cc858a84cc8faa795729e2ac52ce10cdc9cac2c71b05c'

  # dl.devmate.com/com.edovia.Screens-Connect was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.Screens-Connect/#{version.patch}/#{version.after_comma}/ScreensConnect-#{version.patch}.zip"
  appcast 'https://updates.devmate.com/com.edovia.Screens-Connect.xml'
  name 'Screens Connect'
  homepage 'https://screensconnect.com/en/'

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
