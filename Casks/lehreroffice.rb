cask 'lehreroffice' do
  version '2020.1.0'
  sha256 '90a8a80a7b3ec81b8a9ce4ae8a85e5642a25bed7f54d53ac4f7eee77ebd69fcf'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
