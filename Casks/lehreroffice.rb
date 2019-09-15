cask 'lehreroffice' do
  version '2019.11.3'
  sha256 '19215c01022be8d66d46f259f0038921c514d0ea0faf52ba6ebbd23b5488bef0'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
