cask 'lehreroffice' do
  version '2018.9.0'
  sha256 '6c060ba42c8bb481ae26824c9ed2820d6236d2c29a338cdfe4dcd76b42a29b75'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
