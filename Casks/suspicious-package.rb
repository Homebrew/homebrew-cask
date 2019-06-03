cask 'suspicious-package' do
  version '3.5'
  sha256 '7a60a9e2a3d51ad1fe0784742d77ca91d0c1a00ec09605f0df94a91c6a74fb97'

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
