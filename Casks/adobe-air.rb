cask :v1 => 'adobe-air' do
  version '15.0'
  sha256 :no_check # required as upstream package is updated in-place

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
