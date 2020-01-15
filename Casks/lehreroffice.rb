cask 'lehreroffice' do
  version '2019.13.1'
  sha256 '209c0923dc33392bc01a3abbbb076a1742c9a3ae228ff255da8db66eb4d68d8e'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
