cask 'lehreroffice' do
  version '2018.9.1'
  sha256 'c436bdc73ab15c1c7b6c5ead19f61d0aa5cc89ef22a4bfde07db1518c77fa3ba'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
