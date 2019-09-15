cask 'busycontacts' do
  version '1.4.0,140010'
  sha256 'cffd382f0f118177727993c767242ec106a1571e503e097364b564dc60a68fb0'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/news.plist'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  auto_updates true

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
