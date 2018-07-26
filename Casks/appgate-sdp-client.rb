cask 'appgate-sdp-client' do
  version '4.0.1'
  sha256 '81c78b112e70afe3ea174216361fbc0519e6a8cc071160a3f96436767b6c7a2c'

  # sdpdownloads.cyxtera.com was verified as official when first introduced to the cask
  url "https://sdpdownloads.cyxtera.com/files/download/AppGate-SDP-#{version}/clients/AppGate-SDP-#{version}-Installer.dmg"
  name 'AppGate SDP Client for macOS'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate-sdp'

  depends_on macos: '>= :yosemite'

  pkg 'AppGate SDP Installer.pkg'

  uninstall launchctl: [
                         'com.cyxtera.appgate.sdp.client.agent',
                         'com.cyxtera.appgate.sdp.helper',
                         'com.cyxtera.appgate.sdp.tun',
                         'com.cyxtera.appgate.sdp.updater',
                       ],
            quit:      'com.cyxtera.appgate.helper',
            signal:    [
                         ['QUIT', 'com.cyxtera.appgate'],
                       ],
            pkgutil:   'com.appgate.pkg.appgatetun.component'

  zap trash: [
               '~/Library/Application Support/appgate-ui',
               '~/Library/Caches/com.cyxtera.appgate.sdp.uninstall',
               '~/Library/Preferences/com.cyxtera.appgate.sdp*',
               '~/Library/Saved Application State/com.cyxtera.appgate.sdp.savedState',
             ]
end
