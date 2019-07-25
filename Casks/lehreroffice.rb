cask 'lehreroffice' do
  version '2019.11.0'
  sha256 '43405d814d9a2394b9bb98ad186ff292b674dfd4489f8c1e138ea132ff95a995'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
