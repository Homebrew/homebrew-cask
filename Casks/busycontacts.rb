cask 'busycontacts' do
  version '1.4.3,140314'
  sha256 '8769434289d3f8622b2be19dbfeacbd44850d672697a44611e1e7c802f5241b1'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/news.plist'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  auto_updates true

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
