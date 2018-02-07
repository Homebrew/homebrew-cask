cask 'lehreroffice' do
  version '2018.1'
  sha256 '3efc4432dd98433246f4ae443c303138b8b785b74172e77aef7144805b02b256'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '6fe4f5161c743ebd123751643531c2d1b4e78f578dc1b5bed3ca094501c44cde'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
