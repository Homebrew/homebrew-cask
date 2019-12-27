cask 'lehreroffice' do
  version '2019.13.0'
  sha256 '52280b1d9a29dfc52bde6cacc85c6b297f701c3ec6a8c293c3a5c12574cc0a7d'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
