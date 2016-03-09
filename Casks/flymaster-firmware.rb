cask 'flymaster-firmware' do
  version :latest
  sha256 :no_check

  url 'http://downloads.flymaster.net/FirmwareInstaller.dmg'
  name 'Flymaster Firmware Installer'
  homepage 'http://www.flymaster-avionics.com'
  license :gratis

  app 'Firmware Installer.app'
end
