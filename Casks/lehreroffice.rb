cask 'lehreroffice' do
  version '2019.4.3'
  sha256 '82aa274f01dad827dd698d95c38538538e23570163e4d90e16cb1533c1807291'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
