cask 'lehreroffice' do
  version '2019.2.0'
  sha256 '86a83f4f3705e648dc3c4751b020ad9189c7327277b99dedaade47d023f7fc5f'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
