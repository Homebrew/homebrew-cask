cask 'lehreroffice' do
  version '2018.5.1'
  sha256 '022670f56c78a183c92e79e83e33c8e3c92c0d62c35f103271b5e3465ae50111'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: 'b133f3b525a4a99a6c9be4b6307d8ecb4897c0e48e60a9cc9ad99153d1b940b9'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
