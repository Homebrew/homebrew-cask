cask 'adobe-air' do
  version '32.0.0.171'
  sha256 'ee89612c7142cf010dc748f4e3e81a21c2682823ec791b005baac56e4a0f1e72'

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
