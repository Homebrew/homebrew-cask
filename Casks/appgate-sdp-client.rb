cask 'appgate-sdp-client' do
  version '3.3.3'
  sha256 '39025a4e2e9fd99a56e22bf796aea821b7a4bc7ad7a2ff9d237752f08b9e893f'

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
