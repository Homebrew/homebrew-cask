cask 'busycontacts' do
  version '1.3.0'
  sha256 '535a90466810f6200f88f9bedf0229e511d35629c879d1f5e01ed3f937a73538'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/releasenotes.html'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
