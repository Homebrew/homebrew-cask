cask 'lehreroffice' do
  version '2019.11.4'
  sha256 '04c9709d6ee0679aa63d04972ce17ceb797760d9e285e541a4b96cc02850646e'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
