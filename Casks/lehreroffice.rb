cask 'lehreroffice' do
  version '2020.4.0'
  sha256 '0b7af2851ef8628f4812723d106478bbe8ebabcec9a591b5ede315cbfa7d2bfb'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
