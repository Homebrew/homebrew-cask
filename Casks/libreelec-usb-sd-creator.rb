cask 'libreelec-usb-sd-creator' do
  version :latest
  sha256 :no_check

  url 'http://releases.libreelec.tv/LibreELEC.USB-SD.Creator.macOS.dmg'
  name 'LibreELEC USB-SD Creator'
  homepage 'https://libreelec.tv/'

  app 'LibreELEC USB-SD Creator.app'
end
