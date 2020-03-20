cask 'lehreroffice' do
  version '2020.2.0'
  sha256 '269d6185e219fad323142221d31b9c83c98eac97a4a1c254a7b38541ab7bc2da'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
