cask 'busycontacts' do
  version '1.2.16'
  sha256 '6a987bde747e69baca538c05e687c3594a14e2db1788aab957aa6791d5fbc409'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/releasenotes.html'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            quit:    'com.busymac.busycontacts'
end
