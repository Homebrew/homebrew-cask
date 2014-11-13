cask :v1 => 'microsoft-intellipoint' do
  version '8.2'
  sha256 '1a4612d3237084d0502d947793c097575febc95442130e2384c8fbf4b52cac9e'

  url 'http://download.microsoft.com/download/B/1/0/B109F931-70E2-425F-8681-EAAB75845AB8/Microsoft-Mouse_d305.dmg'
  homepage 'http://www.microsoft.com/hardware/en-us/mice'
  license :unknown

  pkg 'Microsoft Mouse Installer.app/Contents/Resources/Microsoft Mouse.pkg'
  uninstall :pkgutil => 'com.microsoft.mouse.installer',
            :kext => [
                      'com.microsoft.driver.MicrosoftMouse',
                      'com.microsoft.driver.MicrosoftMouseBluetooth',
                      'com.microsoft.driver.MicrosoftMouseUSB',
                     ]
end
