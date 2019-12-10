cask 'lehreroffice' do
  version '2019.12.2'
  sha256 '43a6202753089676c57add31c5ba63cb84f42880d4ff40f64a45ff033fed2c20'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
