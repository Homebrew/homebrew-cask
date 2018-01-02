cask 'lehreroffice' do
  version '2017.19.1'
  sha256 'd77df280c163be70b1b814ca12b6d398d1e55b68c2a00b8b5bf62b275303bd39'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '891f6ad23d0554d4e2c87f2667d64ab326d8858883ff80fcd7fa92118a4607f7'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
