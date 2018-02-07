cask 'lehreroffice-zusatz' do
  version '2018.1'
  sha256 '10f6aa6063a9d690b8620e694a5b8f86e4c59ed0fb55fbea051a345f41b52272'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '6fe4f5161c743ebd123751643531c2d1b4e78f578dc1b5bed3ca094501c44cde'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
