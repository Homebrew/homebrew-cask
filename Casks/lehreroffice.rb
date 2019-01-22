cask 'lehreroffice' do
  version '2019.1.1'
  sha256 '4d758346bd56a27cf0abe23eb451eb8c1fa3eae2e370c6ef376079e6af07e24e'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
