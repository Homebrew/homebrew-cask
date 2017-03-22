cask 'fontexplorer-x-pro' do
  version '6.0.1'
  sha256 '6a88c77c6b6cc26e2f0a38102e89a6c3b1ec86be36a19b002bb2d032d7e24586'

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
