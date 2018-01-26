cask 'lehreroffice-zusatz' do
  version '2017.19.5'
  sha256 'cb068563740cd900f2804748074e09589f7ae3fd42e1fb33fa9a5d64f4295341'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '1c68708536535a5524c319a194d438624fba1517613f216379280c32e48db248'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
