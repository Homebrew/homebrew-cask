cask 'flymaster-firmware' do
  version :latest
  sha256 :no_check

  # flymaster.net was verified as official when first introduced to the cask
  url 'http://downloads.flymaster.net/FirmwareInstaller.dmg'
  name 'Flymaster Firmware Installer'
  homepage 'https://www.flymaster-avionics.com/'

  app 'Firmware Installer.app'
end
