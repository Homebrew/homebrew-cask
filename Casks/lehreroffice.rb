cask 'lehreroffice' do
  version '2019.9.0'
  sha256 '50dc564d38f98a7d2f50b8466b1197e41d63aea1cb953acad60ca15c97d67707'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
