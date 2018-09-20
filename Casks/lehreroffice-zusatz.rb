cask 'lehreroffice-zusatz' do
  version '2018.14.2'
  sha256 '8ae820ebef1b1635495db0da6eb9225a871689af3025e801bb270e36bd71190f'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
