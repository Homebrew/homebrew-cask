cask 'lehreroffice-zusatz' do
  version '2018.16.2'
  sha256 'd960ba99d29aa6626287e074b3e4701ce35fd89f6fe726723b76314b4e473ddd'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
