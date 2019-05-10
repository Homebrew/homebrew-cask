cask 'lehreroffice' do
  version '2019.8.0'
  sha256 '24bbc10a20b4af99efce880c632eb0401e259769ca4ca1a4f3fccd7e6de5876b'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
