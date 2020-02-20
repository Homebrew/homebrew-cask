cask 'lehreroffice' do
  version '2019.13.5'
  sha256 '802e071c552d8550af5167230ea432603f62797bbbb9dac04b26bbd010698184'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
