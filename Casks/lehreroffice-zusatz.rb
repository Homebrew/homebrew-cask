cask 'lehreroffice-zusatz' do
  version '2018.15.0'
  sha256 '6774c30c2b91c34fa09244e33bb6762c6d9bf0785e9d55cae7feefe9ea45e018'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
