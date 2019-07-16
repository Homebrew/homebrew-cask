cask 'fontexplorer-x-pro' do
  version '6.0.8'
  sha256 'f26759e46f09ce4fc1bda98b20f358c70a9ce982fcb979f7c0e9f2d8b19eead2'

  url "https://fast.fontexplorerx.com/FontExplorerXPro#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://fex.linotype.com/download/mac/FontExplorerXPro.dmg',
          configuration: version.no_dots
  name 'FontExplorer X Pro'
  homepage 'https://www.fontexplorerx.com/'

  app 'FontExplorer X Pro.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.linotype.FontExplorerX.securityhelper',
            launchctl: [
                         'com.linotype.FontExplorerX.securityhelper',
                         'com.linotype.FontFolderProtector',
                       ],
            quit:      'com.linotype.FontExplorerX'

  zap trash: [
               '~/Library/Application Support/Linotype/FontExplorer X',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.linotype.fontexplorerx.sfl*',
               '~/Library/Caches/com.linotype.FontExplorerX',
               '~/Library/Caches/Metadata/FontExplorer X',
               '~/Library/Cookies/com.linotype.FontExplorerX.binarycookies',
               '~/Library/Preferences/com.linotype.FontExplorerX.plist',
               '~/Library/Saved Application State/com.linotype.FontExplorerX.savedState',
               '/Users/Shared/.FontExplorer X Server',
               '/Users/Shared/FontExplorer X Server',
             ]
end
