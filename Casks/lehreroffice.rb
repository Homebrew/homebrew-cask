cask 'lehreroffice' do
  version '2019.11.1'
  sha256 '437ee56ccda365e73f368e38f8c2affef7fd036eed7d0f2e690469f616adf11a'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
