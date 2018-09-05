cask 'lehreroffice' do
  version '2018.14.0'
  sha256 '264fbce64c1ed0e2bf98da419e8b43eca1974ddc1eedb3bff01736558e9f1ed2'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
