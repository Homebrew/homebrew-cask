cask 'lehreroffice' do
  version '2018.7.0'
  sha256 'd75b9fa3f40edc46d318863ea39ccff03dd0144cf6d51314faa4c92185a8f70e'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '257e5606f1d1c59e1122a05a25f26360210c5b690fd823da6ea039b16871962f'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
