cask 'busycontacts' do
  version '1.4.5,140501'
  sha256 'c3bac31b2c2b1d4ae0a4bdd9221ce0df0ddf2684fadef6a6fa9fc41e4bef2a4e'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/news.plist'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  auto_updates true

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
