cask 'fontexplorer-x-pro' do
  version '6.0.5'
  sha256 '69e8e419166a01fa84b550268b3f8c3769374c771735aeb6bef78db91891b0bb'

  url "http://fast.fontexplorerx.com/FontExplorerXPro#{version.no_dots}.dmg"
  name 'FontExplorer X Pro'
  homepage 'https://www.fontexplorerx.com/'

  depends_on macos: '>= :mountain_lion'

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
