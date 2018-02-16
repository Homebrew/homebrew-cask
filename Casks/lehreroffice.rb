cask 'lehreroffice' do
  version '2018.1.2'
  sha256 'caccb2d5acd478b02b21513036db4589291ccef7015ba69030fe6cb58d703388'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '3f6abfaa7a0af13d02b27553e85584cdb9130c2e07bcb549afae2bffdffb9c14'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
