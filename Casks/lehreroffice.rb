cask 'lehreroffice' do
  version '2018.2.0'
  sha256 '5b1db19466ee31f451ac5de32ca7fa1387187f4b76311ec6effd9e534a3cf45a'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '96aab4a8f7d62edade54ceb5a82d24e4710dab28af25be8b1ef4cbe68d1d6d58'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
