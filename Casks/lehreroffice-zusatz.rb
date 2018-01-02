cask 'lehreroffice-zusatz' do
  version :latest
  sha256 :no_check

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '891f6ad23d0554d4e2c87f2667d64ab326d8858883ff80fcd7fa92118a4607f7'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
