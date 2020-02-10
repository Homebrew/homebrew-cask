cask 'backblaze' do
  version '7.0.0.412'
  sha256 'b990ebf41bd6703ec46f5cfc298169c26194d2f10c8e74e64c0cd340ed7a2439'

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
