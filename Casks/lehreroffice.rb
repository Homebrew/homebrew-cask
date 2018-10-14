cask 'lehreroffice' do
  version '2018.14.3'
  sha256 'eab53e578fff129feae262d5b9fff4823166356d7d14bd4a2b1e6d9069e24a4c'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
