cask 'lehreroffice-zusatz' do
  version '2018.14.0'
  sha256 '636d2612b37ebc78f36db1cf9a382f55ceae455f75fe8cc9848ad084556d02ab'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
