cask 'lehreroffice' do
  version :latest
  sha256 :no_check

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '891f6ad23d0554d4e2c87f2667d64ab326d8858883ff80fcd7fa92118a4607f7'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
