cask 'adobe-air' do
  version '31.0.0.96'
  sha256 '19d80a7b2100bd2449848796814d52bedab5c629753f8f2d9b61b7e1b3d4a0b2'

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
