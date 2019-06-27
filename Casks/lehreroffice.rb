cask 'lehreroffice' do
  version '2019.10.0'
  sha256 'dcedd9b99c34ce529f31b58052e770674a5dd8b9e7ac820e0448ff414a7597af'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
