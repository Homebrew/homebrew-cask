cask 'lehreroffice-zusatz' do
  version '2018.1.2'
  sha256 '39e3b4565c7a28ebf56a1fe3a6d72f52e695cee254e9e290bdfb8eaf84ab1351'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '3f6abfaa7a0af13d02b27553e85584cdb9130c2e07bcb549afae2bffdffb9c14'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
