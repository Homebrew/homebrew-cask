cask 'appgate-sdp-client' do
  version '4.2.0'
  sha256 '3152524e415274f1c025dda77f8cbf72aa3bf54c028e7dc6fb94b14c263e6b04'

  # sdpdownloads.cyxtera.com was verified as official when first introduced to the cask
  url "https://sdpdownloads.cyxtera.com/AppGate-SDP-#{version.major_minor}/clients/AppGate-SDP-#{version}-Installer.dmg"
  name 'AppGate SDP Client for macOS'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate-sdp'

  depends_on macos: '>= :el_capitan'

  pkg 'AppGate SDP Installer.pkg'

  uninstall launchctl: [
                         'com.cyxtera.appgate.sdp.client.agent',
                         'com.cyxtera.appgate.sdp.helper',
                         'com.cyxtera.appgate.sdp.tun',
                         'com.cyxtera.appgate.sdp.updater',
                       ],
            quit:      [
                         'com.cyxtera.appgate.helper',
                         'com.cyxtera.appgate.sdp',
                       ],
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
