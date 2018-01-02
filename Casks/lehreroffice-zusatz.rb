cask 'lehreroffice-zusatz' do
  version '2017.19.1'
  sha256 '0448ea88d5286ca2a7bd0f924018cc4e4fe7266c57d88553fe8fd5407432c8d4'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '891f6ad23d0554d4e2c87f2667d64ab326d8858883ff80fcd7fa92118a4607f7'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
