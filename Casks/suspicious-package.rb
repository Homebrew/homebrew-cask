cask 'suspicious-package' do
  version '3.3.2'
  sha256 '4c93e23b660a590dba80dda69eb0f8a1543f70d12f954d88c61a5d2f0c4c32a0'

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  appcast 'http://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist',
          checkpoint: '92ab7c571dccfe37c358c15355ca492229a6aeb77e3f20f7667c6a5746d072c3'
  name 'Suspicious Package'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'

  auto_updates true

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
