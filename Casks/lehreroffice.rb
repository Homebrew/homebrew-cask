cask 'lehreroffice' do
  version '2019.4.0'
  sha256 '72b4f950d339f04df318a3d419d7d3e88e825f5bad9e8b500dd50595f34438be'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
