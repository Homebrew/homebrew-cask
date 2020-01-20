cask 'lehreroffice' do
  version '2019.13.2'
  sha256 '7a715db7cf7f2da98dce3f5bc79ecfed457b652ea4aa8a0c3dfdd7e2435c39c5'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
