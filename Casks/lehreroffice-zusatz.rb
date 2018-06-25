cask 'lehreroffice-zusatz' do
  version '2018.9.1'
  sha256 '96639232a5be13667b6d0d6c84dbb3836e7f5d6b9b61b59db3ec197397eb1235'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
