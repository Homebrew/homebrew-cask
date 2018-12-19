cask 'suspicious-package' do
  version '3.4.1'
  sha256 'e4673a0c590e7dcb711789d98fcadd2283c2152d262b7809dfd8c8a1b3e9094b'

  url 'https://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  appcast 'https://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist'
  name 'Suspicious Package'
  homepage 'https://www.mothersruin.com/software/SuspiciousPackage/'

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
