cask 'busycontacts' do
  version :latest
  sha256 :no_check

  url 'https://www.busymac.com/download/BusyContacts.zip'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg'
end
