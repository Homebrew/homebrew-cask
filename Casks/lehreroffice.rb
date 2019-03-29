cask 'lehreroffice' do
  version '2019.5.0'
  sha256 'f84024e2a22c33951e3fcca5f1609b28f5d4bc877a25ef2ff5d0ffa70d86e287'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
