cask 'appgate-sdp-client' do
  version '3.3.2'
  sha256 '00ee27a8bc338b19ccec4541fdbd0603673d1851f51471daba4e5fe143f3eca0'

  url "https://download.cryptzone.com/files/download/AppGate-#{version}/clients/AppGate-#{version}-Installer.dmg"
  name 'AppGate SDP Client for macOS'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate'

  depends_on macos: '>= :yosemite'

  pkg 'AppGate SDP Installer.pkg'

  uninstall launchctl: [
                         'com.cryptzone.appgate.tun',
                         'com.cryptzone.appgate.xdp.client.agent',
                       ],
            quit:      'com.electron.appgate.helper',
            signal:    [
                         ['QUIT', 'com.electron.appgate'],
                       ],
            pkgutil:   'com.appgate.pkg.appgatetun.component'

  zap trash: [
               '~/Library/Application Support/appgate-ui',
               '~/Library/Application Support/appgatexdp-ui',
               '~/Library/Caches/com.cryptzone.appgate.xdp.uninstall',
               '~/Library/Preferences/com.cryptzone.appgate.xdp*',
               '~/Library/Preferences/com.electron.appgate.helper.plist',
               '~/Library/Preferences/com.electron.appgate.plist',
               '~/Library/Saved Application State/com.electron.appgate.savedState',
             ]
end
