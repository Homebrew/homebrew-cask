cask 'lehreroffice' do
  version '2018.16.2'
  sha256 '83f11c7f4ff8263c1b16060d0ee413336bb4efbe20888a5714934a670468a6ae'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
