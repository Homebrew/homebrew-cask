cask 'lehreroffice-zusatz' do
  version '2018.5.0'
  sha256 '807d3c47c73d3b0dbd82bd9c810ce764ce819c7abb6b99d39c90f83523ea8aa2'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '56468370af51073f2261b475ca6387f3ac9cb9725819e9c7fe80c5c2da5ac0d7'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
