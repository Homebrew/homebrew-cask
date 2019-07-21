cask 'lehreroffice' do
  version '2019.10.1'
  sha256 '32fa0adbcc8d013992e52dc1c0a10b56e811a3d845cecf0aa5996fa3852dd246'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
