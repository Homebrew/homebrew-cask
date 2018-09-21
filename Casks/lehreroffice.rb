cask 'lehreroffice' do
  version '2018.14.2'
  sha256 '12beea418a8eea40aa0aa2dcf43d38a8b44dacf111665654d4dec4be0098c6f0'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
