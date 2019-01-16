cask 'lehreroffice' do
  version '2019.1.0'
  sha256 'd126808994f476481a583a9a3c4cf8faab60358048a546840fbc5ddf9f2ca8d2'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
