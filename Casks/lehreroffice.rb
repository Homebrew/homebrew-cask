cask 'lehreroffice' do
  version '2019.6.0'
  sha256 '62c1bd85e3af06ecfa6704a16adb0e53177e2752f366cc4cd79efd962a72562c'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
