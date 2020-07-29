cask 'lehreroffice' do
  version '2020.5.4'
  sha256 '55e3458c4a92fd47ef7fb209cee41bc366df412b10fa2b2f2b15638d3ef292dd'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
