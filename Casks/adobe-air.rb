class AdobeAir < Cask
  version '15.0'
  sha256 '07f7ae83b9d9005c830ce7592d651c378e235a20f62da692410035a703af20c7'

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
