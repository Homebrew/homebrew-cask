cask 'lehreroffice-zusatz' do
  version '2019.2.0'
  sha256 '49a021d79f9236c403a677107aa20e21c3ff771619b99da1824773386cc830d5'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
