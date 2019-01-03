cask 'lehreroffice' do
  version '2018.17.1'
  sha256 'e0195c2d605fe4851d79da9d158353d9c46194c20a3cfdd31e6505a3d3820c9a'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
