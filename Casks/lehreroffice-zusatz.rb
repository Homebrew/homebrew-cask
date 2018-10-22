cask 'lehreroffice-zusatz' do
  version '2018.14.4'
  sha256 '3d8a65c941749b8c237e8553c2ceed1416727c2af8d7ae43207c9c984a85db72'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
