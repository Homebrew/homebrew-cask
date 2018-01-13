cask 'lehreroffice' do
  version '2017.19.3'
  sha256 '4bf53f5cd2e1071b5563800b3fe4374769cde6f75a0620a2c467b1445fdf38f1'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '32b8b23b90ed403f037066a66cf97764e429c004c88406a798a0c7d3e34c15aa'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
