cask 'busycontacts' do
  version '1.3.4,130401'
  sha256 '2a8b105f2bddc324bee85ddb9ebb36c1538e8fc2a406f62debeef0fef2fdd712'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/news.plist'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  auto_updates true

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
