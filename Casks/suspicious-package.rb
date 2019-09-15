cask 'suspicious-package' do
  version '3.5.1'
  sha256 'b5ed2c304745af76ea70f17718dde00bb85b1cc076dfce37da46f1c3b0e3e7f7'

  url 'https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  appcast 'https://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist'
  name 'Suspicious Package'
  homepage 'https://www.mothersruin.com/software/SuspiciousPackage/'

  depends_on macos: '>= :high_sierra'

  app 'Suspicious Package.app'
  binary "#{appdir}/Suspicious Package.app/Contents/SharedSupport/spkg"

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.suspiciouspackageapp.sfl*',
               '~/Library/Caches/com.mothersruin.SuspiciousPackageApp',
               '~/Library/Caches/com.mothersruin.XPCService.UpdateChecker',
               '~/Library/Preferences/com.mothersruin.SuspiciousPackage.plist',
               '~/Library/Preferences/com.mothersruin.SuspiciousPackageApp.plist',
               '~/Library/WebKit/com.mothersruin.SuspiciousPackageApp',
             ]
end
