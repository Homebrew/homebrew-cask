cask 'appgate-sdp-client' do
  version '4.1.0'
  sha256 'a334916941a58299d7a5b89aaadf51ee9f7b612fd479af51792fbef6f7bb1081'

  # sdpdownloads.cyxtera.com was verified as official when first introduced to the cask
  url "https://sdpdownloads.cyxtera.com/files/download/AppGate-SDP-#{version}/clients/AppGate-SDP-#{version}-Installer.dmg"
  name 'AppGate SDP Client for macOS'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate-sdp'

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
