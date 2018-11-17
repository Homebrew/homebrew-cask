cask 'busycontacts' do
  version '1.3.1'
  sha256 '7be2a61e524b29f9d3383c90cf1f33f24cd983dd301d8cd6a05a4de401c3b574'

  url 'https://www.busymac.com/download/BusyContacts.zip'
  appcast 'https://www.busymac.com/busycontacts/releasenotes.html'
  name 'BusyContacts'
  homepage 'https://www.busymac.com/busycontacts/index.html'

  pkg 'BusyContacts Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycontacts.pkg',
            signal:  ['KILL', 'com.busymac.busycontacts']
end
