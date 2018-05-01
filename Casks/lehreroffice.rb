cask 'lehreroffice' do
  version '2018.6.0'
  sha256 '18bfbb32f0a719857aa53d43e936edc96fde4835824b67fd416fe6a9846d10d3'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '46f4af140891dbba91890b2a69bedd15adb7dd6e4b08bf7617924434796f9cac'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
