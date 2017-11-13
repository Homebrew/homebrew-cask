cask 'fontexplorer-x-pro' do
  version '6.0.2'
  sha256 'f842e373d6126218dcd34bd116ceab29a7abb5c6ea22afec04ad86652f19a290'

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

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.linotype.fontexplorerx.sfl*',
                '~/Library/Caches/com.linotype.FontExplorerX',
                '~/Library/Caches/Metadata/FontExplorer X',
                '~/Library/Cookies/com.linotype.FontExplorerX.binarycookies',
                '~/Library/Saved Application State/com.linotype.FontExplorerX.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Linotype/FontExplorer X',
                '~/Library/Preferences/com.linotype.FontExplorerX.plist',
                '/Users/Shared/.FontExplorer X Server',
                '/Users/Shared/FontExplorer X Server',
              ]
end
