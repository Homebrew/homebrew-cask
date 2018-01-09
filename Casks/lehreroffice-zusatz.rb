cask 'lehreroffice-zusatz' do
  version '2017.19.2'
  sha256 '6bae74545e3f4d98b471a90f7970b31f4e0bbe3f09a29845f7bb598bcd93f253'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '951662e2da7713050ae216bb179ab2e11489198f5ae1926c76e7ee45c7e6578a'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
