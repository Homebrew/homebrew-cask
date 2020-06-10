cask 'backblaze' do
  version '7.0.1.444'
  sha256 '191f2622b47944b5260a117ab1c6a31fde767874b36b56336ae3ea544f871e8d'

  url 'https://secure.backblaze.com/mac/install_backblaze.dmg'
  appcast 'https://secure.backblaze.com/api/clientversion.xml',
          configuration: "mac_version=\"#{version}\""
  name 'Backblaze'
  homepage 'https://backblaze.com/'

  installer manual: 'Backblaze Installer.app'

  uninstall launchctl: [
                         'com.backblaze.bzserv',
                         'com.backblaze.bzbmenu',
                       ],
            delete:    [
                         "#{appdir}/Backblaze.app",
                         '/Library/PreferencePanes/BackblazeBackup.prefPane',
                       ]

  zap trash: [
               '/Library/Backblaze.bzpkg',
               '~/Library/Preferences/com.backblaze.bzbmenu.plist',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.backblaze.*.sfl*',
               '/Library/Logs/DiagnosticReports/bzbmenu_*.*_resource.diag',
               '~/Library/Logs/BackblazeGUIInstaller',
             ]
end
