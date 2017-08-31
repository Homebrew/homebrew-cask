cask 'suspicious-package' do
  version '3.2,241'
  sha256 'b8b038663f071ad55ea21ccf3a8aa09ae54a1bd1586a803e7e5413a1a3fecaae'

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  appcast 'http://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist',
          checkpoint: 'f32837a97a05888c99c48e6efddda6e64e38dbf74c9a7d8543fcf84879c136aa'
  name 'Suspicious Package'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'

  auto_updates true

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
