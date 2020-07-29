cask 'lehreroffice' do
  version '2020.5.2'
  sha256 'c266d5274ae31cc1ef998dd75fbdd67126bac3ab1f8871b75eb2adc665b58392'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
