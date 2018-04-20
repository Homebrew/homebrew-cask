cask 'lehreroffice-zusatz' do
  version '2018.5.1'
  sha256 'b0f23d0d1b8e1cf3b9ff1fbb67847ecf06ab66adc63d5c2d1b30a4e718f07a2b'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: 'b133f3b525a4a99a6c9be4b6307d8ecb4897c0e48e60a9cc9ad99153d1b940b9'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
