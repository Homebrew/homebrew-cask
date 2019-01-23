cask 'lehreroffice-zusatz' do
  version '2019.1.1'
  sha256 'a95c1c8daf89043ff8d001aa9c244554ffdab598f763a6491bc03991daca6872'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
