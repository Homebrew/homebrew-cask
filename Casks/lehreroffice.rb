cask 'lehreroffice' do
  version '2019.12.1'
  sha256 '01e79da4d7385e0492d5c14f899a6dbf836c3409ffc85ae1cd135d089173ac94'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
