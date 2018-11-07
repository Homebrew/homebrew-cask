cask 'lehreroffice' do
  version '2018.16.0'
  sha256 '3899688e4a7a5e35997636bb13ad1cdd39fe1828217aee26399e651801242e42'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
