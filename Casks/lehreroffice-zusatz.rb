cask 'lehreroffice-zusatz' do
  version '2019.1.0'
  sha256 '54a72f96396a4e741b908c26d97b5f4b0962a5e28ab1dc518bb1cf5c4fae2a0f'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
