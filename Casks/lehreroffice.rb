cask 'lehreroffice' do
  version '2017.19.2'
  sha256 'a53f04159cb63791018237c89e253779d37ecd867e674a51f68ceefd019cf9d3'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '951662e2da7713050ae216bb179ab2e11489198f5ae1926c76e7ee45c7e6578a'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
