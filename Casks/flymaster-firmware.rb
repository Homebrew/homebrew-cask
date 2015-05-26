cask :v1 => 'flymaster-firmware' do
  version :latest
  sha256 :no_check

  url 'http://downloads.flymaster.net/FirmwareInstaller.dmg'
  homepage 'http://www.flymaster-avionics.com'
  name 'Flymaster Firmware Installer'
  license :gratis

  app 'Firmware Installer.app'
end
