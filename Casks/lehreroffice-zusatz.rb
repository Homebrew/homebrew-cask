cask 'lehreroffice-zusatz' do
  version '2018.16.0'
  sha256 '6cf07a32d8720686eb37ce6ffb6c9709c4b73df08b6c3d1d4b88bf8c25a00602'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
