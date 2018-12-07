cask 'lehreroffice-zusatz' do
  version '2018.17'
  sha256 '32ff6adc04eebcd187a841968df358a409435846d0f97972388b143b9c11b2ee'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
