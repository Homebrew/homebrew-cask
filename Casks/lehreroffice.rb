cask 'lehreroffice' do
  version '2020.3.1'
  sha256 '475ec4d99c97e7add31ec20b5c5d030a1b3906b4cdf1d21d38883944b38bd106'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
