class AdobeAir < Cask
  version '15.0'
  sha256 'd0b82ca3c266034b9bc3029e3bb2e69e1a242af5012e6eebafb68cc489609f2d'

  url "http://airdownload.adobe.com/air/mac/download/#{version}/AdobeAIR.dmg"
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
