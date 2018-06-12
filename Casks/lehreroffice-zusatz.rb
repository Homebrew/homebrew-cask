cask 'lehreroffice-zusatz' do
  version '2018.9.0'
  sha256 '491aa84f1f124683561d2c1be792edac74fb5d4ee280c5b8ca0707b4edf963fb'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
