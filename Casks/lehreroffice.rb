cask 'lehreroffice' do
  version '2020.3.0'
  sha256 '715482e4934685e93ea9783b20a2ee60e04d5e397537640b52c13db5385b0d4b'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
