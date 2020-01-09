cask 'backblaze' do
  version '7.0.0.402'
  sha256 'c5bb26fab34b890c643c8c6ebb23fccc1a7014530e1d6cdcc9010ab722ebe516'

  url 'https://secure.backblaze.com/mac/install_backblaze.dmg'
  appcast 'https://backblaze.com/blog/category/backblaze-bits/release',
          configuration: version.major_minor
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
