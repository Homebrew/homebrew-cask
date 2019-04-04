cask 'lehreroffice' do
  version '2019.5.1'
  sha256 'c8bc6a367067f7d6d4fc6b31d88779864d57e80200e6446c822193b6e44e1954'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
