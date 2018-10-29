cask 'lehreroffice' do
  version '18.14.4'
  sha256 'ff84a8884246ce34ec1b537e168241fa191a6fb9667eae28189a296b07f47e05'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
