cask 'lehreroffice' do
  version '2019.13.4'
  sha256 'b7d84e03a672f196ec72426d313df8bf9c7d868d350a0ada12e9bed7b1811ebb'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
