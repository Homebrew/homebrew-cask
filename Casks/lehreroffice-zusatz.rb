cask 'lehreroffice-zusatz' do
  version '2019.2.2'
  sha256 '6ab2702ef58df7d6d872ef3d10d79f1bd1c05676449785624eff03cb3a60f407'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
