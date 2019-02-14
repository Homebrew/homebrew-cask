cask 'lehreroffice-zusatz' do
  version '2019.2.3'
  sha256 '165b6129f1734c5c90fd26f27fdda2573a4df0e6f4146145ba080f477c301252'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
