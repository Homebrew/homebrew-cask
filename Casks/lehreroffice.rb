cask 'lehreroffice' do
  version '2019.3.0'
  sha256 'e0631eee0e4876641470130468034e68a6832f6d375b6d7743c719f61d3bf95d'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
