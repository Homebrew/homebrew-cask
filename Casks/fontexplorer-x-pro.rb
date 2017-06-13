cask 'fontexplorer-x-pro' do
  version '6.0.2'
  sha256 'f842e373d6126218dcd34bd116ceab29a7abb5c6ea22afec04ad86652f19a290'

  url "http://fast.fontexplorerx.com/FontExplorerXPro#{version.no_dots}.dmg"
  name 'FontExplorer X Pro'
  homepage 'https://www.fontexplorerx.com/'

  depends_on macos: '>= :mountain_lion'

  app 'FontExplorer X Pro.app'

  zap delete: [
                '/Library/PrivilegedHelperTools/com.linotype.FontExplorerX.securityhelper',
                '/Library/LaunchDaemons/com.linotype.FontExplorerX.securityhelper.plist',
                '~/Library/Application Support/Linotype/FontExplorer X',
                '~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.linotype.fontexplorerx.sfl',
                '~/Library/Caches/com.linotype.FontExplorerX',
                '~/Library/Cookies/com.linotype.FontExplorerX.binarycookies',
                '~/Library/LaunchAgents/com.linotype.FontFolderProtector.plist',
                '~/Library/Preferences/com.linotype.FontExplorerX.plist',
                '~/Library/Saved\ Application\ State/com.linotype.FontExplorerX.savedState',
              ]
end
