cask 'adobe-air' do
  version '25.0'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://airdownload.adobe.com/air/mac/download/#{version}/AdobeAIR.dmg"
  name 'Adobe AIR'
  homepage 'https://get.adobe.com/air/'

  installer script: {
                      executable: 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
                      args:       %w[-silent],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
                      args:       %w[-uninstall],
                    },
            rmdir:  [
                      '/Applications/Adobe/Flash Player/AddIns',
                      '/Applications/Adobe/Flash Player',
                      '/Applications/Adobe',
                    ]

  zap delete: [
                '~/Library/Application Support/Adobe/AIR',
                '~/Library/Caches/com.adobe.air.ApplicationInstaller',
              ],
      rmdir:  '~/Library/Application Support/Adobe/'
end
