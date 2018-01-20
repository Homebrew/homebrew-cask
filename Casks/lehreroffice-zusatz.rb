cask 'lehreroffice-zusatz' do
  version '2017.19.3'
  sha256 '2d56a81aedeb9c0374d6bf76a7b766bdfd8b0c9dc641e310e0c1e060c0b07fae'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '32b8b23b90ed403f037066a66cf97764e429c004c88406a798a0c7d3e34c15aa'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
