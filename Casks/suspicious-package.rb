cask 'suspicious-package' do
  version '3.3'
  sha256 '8b7f5149b042ef46e689689f19c306ef3b10436d46ca6c150852aa2de2636b8a'

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  appcast 'http://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist',
          checkpoint: '520bbb902026f6393e55542b1aa188f4c6970ffa8a020e728fd8413ea5eea776'
  name 'Suspicious Package'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'

  auto_updates true

  app 'Suspicious Package.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.suspiciouspackageapp.sfl*',
                '~/Library/Caches/com.mothersruin.SuspiciousPackageApp',
                '~/Library/Caches/com.mothersruin.XPCService.UpdateChecker',
                '~/Library/WebKit/com.mothersruin.SuspiciousPackageApp',
              ],
      trash:  [
                '~/Library/Preferences/com.mothersruin.SuspiciousPackage.plist',
                '~/Library/Preferences/com.mothersruin.SuspiciousPackageApp.plist',
              ]
end
