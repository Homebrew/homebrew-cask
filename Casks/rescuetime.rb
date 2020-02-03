cask 'rescuetime' do
  version '2.14.5.1'
  sha256 '68a6335156f2c17376a82c1b8204df00fa5b1ccd92d77c301bc422d41835bc5d'

  url 'https://www.rescuetime.com/installers/RescueTimeInstaller.pkg'
  appcast 'https://www.rescuetime.com/installers/appcast'
  name 'RescueTime'
  homepage 'https://www.rescuetime.com/'

  pkg 'RescueTimeInstaller.pkg'

  uninstall pkgutil: 'com.rescuetime.RescueTime'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*',
               '~/Library/Caches/com.rescuetime.RescueTime',
               '~/Library/Preferences/com.rescuetime.RescueTime.plist',
               '~/Library/RescueTime.com',
             ]
end
