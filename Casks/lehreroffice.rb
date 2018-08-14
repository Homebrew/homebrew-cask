cask 'lehreroffice' do
  version '2018.10.0'
  sha256 '44a4002c3f07041090516f113d9d19e4cc10a1844dd67882fd0fbdd21a1bc480'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
