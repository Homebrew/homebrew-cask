cask 'screens-connect' do
  version '4.4.5450,1509106836'
  sha256 'a4c530e8af65dd6b29ca96894356f9b815d86f8cdbe0ffe91c84446cd4907960'

  # dl.devmate.com/com.edovia.Screens-Connect was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.Screens-Connect/#{version.patch}/#{version.after_comma}/ScreensConnect-#{version.patch}.zip"
  appcast 'https://updates.devmate.com/com.edovia.Screens-Connect.xml',
          checkpoint: '746a8d75118580c1519f4d8bfabeef8b09f9e4fac7d7e7c0ba1cd0288dd8261c'
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
                         executable:   "#{appdir}/Screens Connect.app/Contents/Resources/sc-uninstaller.tool",
                         must_succeed: false,
                         sudo:         true,
                       }

  zap trash: [
               '~/Library/Preferences/com.edovia.Screens-Connect.plist',
               '~/Library/Preferences/com.edovia.ScreensConnect.Shared.plist',
             ]
end
