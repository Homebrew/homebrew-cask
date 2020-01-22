cask 'lehreroffice' do
  version '2019.13.3'
  sha256 'ca3cf5f66864611de37d83a99d847c5e468e7471fea9f966e65fca84847cd806'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
