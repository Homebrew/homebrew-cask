cask 'lehreroffice-zusatz' do
  version '2018.7.0'
  sha256 '8bde8bb65f1fa3c6544502b5e7c7baa40d66b3b4446cd95fcefea9fc31916228'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '257e5606f1d1c59e1122a05a25f26360210c5b690fd823da6ea039b16871962f'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
