cask 'busycontacts' do
  version '1.4.7,140703'
  sha256 '6a64c3b3d16e52fba144d9e2058b24a801bfc8eff5d4f892ee77b6b36bfd116f'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/news.plist'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  auto_updates true

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
