cask 'busycontacts' do
  version '1.2.17'
  sha256 '4819822ab9e795222ace5896b9ed9859d824e047b40b7d0c4e989a6ff7f5ad76'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/releasenotes.html'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
