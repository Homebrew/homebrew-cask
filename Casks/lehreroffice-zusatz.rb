cask 'lehreroffice-zusatz' do
  version '2018.14.3'
  sha256 '525524f8054f3b0b4d2dd7a8841c542c1221086630c589f23bc428174194c6b1'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
