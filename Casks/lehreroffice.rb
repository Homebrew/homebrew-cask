cask 'lehreroffice' do
  version '2020.5.3'
  sha256 'a52abf6d9730f4db9438e69ddb828100d471985092ed88bc8a6d6ebb77ff1290'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
