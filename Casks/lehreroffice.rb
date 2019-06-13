cask 'lehreroffice' do
  version '2019.9.1'
  sha256 'f506ec3a0d878292cd7d7df3b8b2754a385315eeb5b8cac5b2aacca2a8baa567'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
