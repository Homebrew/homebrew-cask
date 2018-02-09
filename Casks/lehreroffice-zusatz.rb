cask 'lehreroffice-zusatz' do
  version '2018.1.1'
  sha256 '632638bc8031b7b82e02f67eaad0441ae7795431d547260601bb85bb3c7b7b2a'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: 'bd9aea9ce46c817c7fb0c4be6f91613491daba7b727db91fb53a14c4c612a7e0'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
