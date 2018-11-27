cask 'lehreroffice' do
  version '2018.16.1'
  sha256 'ee0e6276818e89f44a3123d94d1e26bd41ce4a72dcd4b5f120e17aa18c3ec8d7'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
