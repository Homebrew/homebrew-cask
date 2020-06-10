cask 'lehreroffice' do
  version '2020.5.1'
  sha256 '89ffeb05b5929f1187df68d9e63ed6e70508ee59abd1517d9fc35c1667471f96'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
