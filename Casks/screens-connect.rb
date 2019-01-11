cask 'screens-connect' do
  version '4.8.6060,1541095779'
  sha256 '3880cc9f0519eb5c853365250ccad6608f69beebad754ce15aa9d59062e9f7df'

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
