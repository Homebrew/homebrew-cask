cask 'microsoft-intellitype' do
  version '8.2'
  sha256 '8aaaef8fc2722f1e896facb23c69ef759f7ecd92d94031c51ca0a890d198cd58'

  url 'https://download.microsoft.com/download/B/1/0/B109F931-70E2-425F-8681-EAAB75845AB8/Microsoft-Desktop_d305.dmg'
  name 'Microsoft IntelliType'
  homepage 'https://www.microsoft.com/hardware/en-us/keyboards'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Microsoft Desktop Installer.app/Contents/Resources/Microsoft Desktop.mpkg/Contents/Packages/Microsoft Keyboard.pkg'

  uninstall pkgutil: 'com.microsoft.keyboard.installer',
            kext:    [
                       'com.microsoft.driver.MicrosoftKeyboard',
                       'com.microsoft.driver.MicrosoftKeyboardBluetooth',
                       'com.microsoft.driver.MicrosoftKeyboardUSB',
                     ]
end
