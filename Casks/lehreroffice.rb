cask 'lehreroffice' do
  version '2019.4.2'
  sha256 '0dbc9319bca83ed71a0e3f22fbacbadd94ad0e99510d4d5620bd9213eaa6bc76'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
