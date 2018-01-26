cask 'lehreroffice' do
  version '2017.19.5'
  sha256 'e7a422b4eac3cba7e349809d26ea741216288e322d84a9f6ecfb055af2f041cc'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '1c68708536535a5524c319a194d438624fba1517613f216379280c32e48db248'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
