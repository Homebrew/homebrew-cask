cask 'fontexplorer-x-pro' do
  version '6.0.6'
  sha256 '47e860c5974b33694a14b7f681d620ed58ad57729098029532f68b1fca7f07fe'

  url "https://fast.fontexplorerx.com/FontExplorerXPro#{version.no_dots}.dmg"
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
