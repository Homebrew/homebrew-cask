cask 'busycontacts' do
  version '1.4.6,140607'
  sha256 '27d3ac1cfc9072626d84bdbb96998ea72c10a4a8a9e8dcde768c02b123c0b7a2'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/news.plist'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  auto_updates true

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
