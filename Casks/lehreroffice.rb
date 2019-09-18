cask 'lehreroffice' do
  version '2019.11.5'
  sha256 '8e567088eb5522ef8191959721f4f5437cad11ab8bd35421e1a9f99656a31bb6'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
