cask 'lehreroffice-zusatz' do
  version '2018.17.1'
  sha256 '57bd12c220c8f7a46611fc5c8e2caa4eb999cc00476b27c6458b01d2c5976a64'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
