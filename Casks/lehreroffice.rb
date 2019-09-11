cask 'lehreroffice' do
  version '2019.11.2'
  sha256 '569ad7b847241149408367bfc4cc0e252c68f818dbe19ba18f3aa4ea7b892c5e'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
