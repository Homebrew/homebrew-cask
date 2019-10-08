cask 'lehreroffice' do
  version '2019.12.0'
  sha256 'b243ddb5f15e39b50e198a35e59c3a6c9a1dbfa4d7273d84a30618350da274da'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
