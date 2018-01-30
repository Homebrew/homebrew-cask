cask 'appgate-sdp-client' do
  version '3.3.0'
  sha256 '9d1fef5b99bd01d9b174e920c926fb78a1300deef422c36b281bc571257d788a'

  url "https://download.cryptzone.com/files/download/AppGate-#{version}/clients/AppGate-#{version}-Installer.dmg"
  name 'AppGate SDP Client for macOS'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate'

  depends_on macos: '>= :yosemite'

  pkg 'AppGate Installer.pkg'

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
