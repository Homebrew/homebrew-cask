cask 'busycontacts' do
  version :latest
  sha256 :no_check

  url 'http://www.busymac.com/download/BusyContacts.zip'
  name 'BusyContacts'
  homepage 'http://www.busymac.com/busycontacts/index.html'
  license :commercial

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg'
end
