cask 'lehreroffice' do
  version '2018.15.0'
  sha256 'e976138b1817bf0345c30c245e812312f3a8900760948ec65828744301577d73'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
