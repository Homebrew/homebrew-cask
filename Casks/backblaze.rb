cask 'backblaze' do
  version '7.0.1.452'
  sha256 '7b60cca1e2bd74cd947dd67bd292e48407a6aae878c617da956e8f816dcf5657'

  url 'https://secure.backblaze.com/mac/install_backblaze.dmg'
  appcast 'https://secure.backblaze.com/api/clientversion.xml',
          must_contain: "mac_version=\"#{version}\""
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
