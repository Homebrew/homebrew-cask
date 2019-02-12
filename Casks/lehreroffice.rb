cask 'lehreroffice' do
  version '2019.2.3'
  sha256 'f570317bf7b36648e59f67da1e17b059cd010751f48c2b728569375070267670'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
