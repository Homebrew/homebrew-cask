class AdobeAir < Cask
  version :latest
  sha256 :no_check

  url "http://airdownload.adobe.com/air/mac/download/15.0/AdobeAIR.dmg"
  homepage 'https://get.adobe.com/air/'
  license :gratis

  installer :script => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
            :args   => %w[-silent],
            :sudo   => true

  uninstall :script => {
                        :executable => 'Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer',
                        :args       => %w[-uninstall]
                       }
  zap :delete => [
                  '~/Library/Application Support/Adobe/AIR',
                  '~/Library/Caches/com.adobe.air.ApplicationInstaller',
                 ],
      :rmdir  => '~/Library/Application Support/Adobe/'
end
