cask 'lehreroffice' do
  version '2020.5.0'
  sha256 '42ed7e4b68dedd224d8b39d3984b31ecff32ac2c6f2364ce86692f622208a537'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
