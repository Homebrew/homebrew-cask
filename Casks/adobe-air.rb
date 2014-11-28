cask :v1 => 'adobe-air' do
  version '15.0'
  sha256 '0fd04ae2ecb839a70b148a8194db1143fb3c2a8a2000d42e579c08aca65c0691'

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
