cask 'busycontacts' do
  version '1.2.15'
  sha256 '6411eed67fd9cbbf437497371d1855e026dd9a427f5d194606df366791da07ae'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/releasenotes.html'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg'
end
