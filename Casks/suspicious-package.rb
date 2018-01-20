cask 'suspicious-package' do
  version '3.3.1'
  sha256 '49eee6dc930574b6d03534bea5820cdf47fd10c4f6b82be14afb8e1e76a06304'

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  appcast 'http://www.mothersruin.com/software/SuspiciousPackage/data/SuspiciousPackageVersionInfo.plist',
          checkpoint: 'eb576c7131af0571064bb963b63381ecadfe395b34a9663746e71beb7dd87ca8'
  name 'Suspicious Package'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'

  auto_updates true

  app 'Suspicious Package.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mothersruin.suspiciouspackageapp.sfl*',
               '~/Library/Caches/com.mothersruin.SuspiciousPackageApp',
               '~/Library/Caches/com.mothersruin.XPCService.UpdateChecker',
               '~/Library/Preferences/com.mothersruin.SuspiciousPackage.plist',
               '~/Library/Preferences/com.mothersruin.SuspiciousPackageApp.plist',
               '~/Library/WebKit/com.mothersruin.SuspiciousPackageApp',
             ]
end
