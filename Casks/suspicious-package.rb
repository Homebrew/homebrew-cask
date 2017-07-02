cask 'suspicious-package' do
  version :latest
  sha256 :no_check

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  name 'Suspicious Package'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'

  app 'Suspicious Package.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.suspiciouspackageapp.sfl',
                '~/Library/Caches/com.mothersruin.SuspiciousPackageApp',
                '~/Library/Caches/com.mothersruin.XPCService.UpdateChecker',
                '~/Library/WebKit/com.mothersruin.SuspiciousPackageApp',
              ],
      trash:  [
                '~/Library/Preferences/com.mothersruin.SuspiciousPackage.plist',
                '~/Library/Preferences/com.mothersruin.SuspiciousPackageApp.plist',
              ]
end
