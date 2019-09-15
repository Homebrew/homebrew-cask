cask 'busycontacts' do
  version '1.4.1,140101'
  sha256 '05ded006794b1b6aaf0b08790f9789e9e94c97e1f18d3fdf873dfa76f8deb814'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/news.plist'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  auto_updates true

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
