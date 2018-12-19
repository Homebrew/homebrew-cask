cask 'adobe-air' do
  version '32.0.0.89'
  sha256 'e3c0a9154a5c3bca5f91be93b88e10960a1799f5592112ed282c8b475489fae2'

  url "https://airdownload.adobe.com/air/mac/download/#{version.major_minor}/AdobeAIR.dmg"
  appcast 'https://helpx.adobe.com/au/air/kb/archived-air-sdk-version.html'
  name 'Adobe AIR'
  homepage 'https://get.adobe.com/air/'

  installer script: {
                      executable: 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
                      args:       ['-silent'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
                      args:       ['-uninstall'],
                      sudo:       true,
                    },
            rmdir:  [
                      '/Applications/Adobe/Flash Player/AddIns',
                      '/Applications/Adobe/Flash Player',
                      '/Applications/Adobe',
                    ]

  zap trash: [
               '~/Library/Application Support/Adobe/AIR',
               '~/Library/Caches/com.adobe.air.ApplicationInstaller',
             ],
      rmdir: '~/Library/Application Support/Adobe/'
end
