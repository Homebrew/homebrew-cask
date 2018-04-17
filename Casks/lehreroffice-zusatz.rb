cask 'lehreroffice-zusatz' do
  version '2018.2.0'
  sha256 '15cfb0720ff1eff329b5adfbe7982b926b51648f94d62a081ee458455d3f5af7'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '96aab4a8f7d62edade54ceb5a82d24e4710dab28af25be8b1ef4cbe68d1d6d58'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
