cask 'lehreroffice' do
  version '2019.7.0'
  sha256 '9c322ac42a89831dba2c5e48f1da24443ef2552ce69c955e9987e47f3c7958e3'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
