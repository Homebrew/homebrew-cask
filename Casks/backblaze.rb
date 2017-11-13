cask 'backblaze' do
  version :latest
  sha256 :no_check

  url 'https://secure.backblaze.com/mac/install_backblaze.dmg'
  name 'Backblaze'
  homepage 'https://www.backblaze.com/'

  installer manual: 'Backblaze Installer.app'

  uninstall launchctl: [
                         'com.backblaze.bzserv.plist',
                         'com.backblaze.bzbmenu.plist',
                       ],
            delete:    '/Library/PreferencePanes/BackblazeBackup.prefPane'

  zap delete: [
                '/Library/Backblaze.bzpkg',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.backblaze.backblazebackup.sfl*',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.backblaze.bzdoinstall.sfl*',
                '~/Library/Logs/BackblazeGUIInstaller',
              ]
end
