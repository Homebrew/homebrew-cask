cask 'suspicious-package' do
  version '3.4'
  sha256 '0416e5a6c0e39ccdc2eed430e3d1650df039564bb891d649ea6f3bd987785a08'

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
