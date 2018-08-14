cask 'adobe-air' do
  version '30.0.0.107'
  sha256 '17be984bf8fc2d24f5db70b044a07da682f4bbd4394684c56f33b5101c2d0c72'

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
