cask 'appgate-sdp-client' do
  version '3.2.1.8632'
  sha256 'db178b54893c5d291553f35ab5084cd289bf4f92180893b127d0129c4ba181f7'

  url "https://download.cryptzone.com/files/download/AppGate-#{version.major_minor_patch}/clients/AppGate-#{version.major_minor_patch}-Installer.dmg"
  name 'AppGate SDP Client for macOS'
  homepage 'https://www.cryptzone.com/downloadcenter/appgate'

  depends_on macos: '>= 10.10'

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

  zap delete: [
                '~/Library/Preferences/com.cryptzone.appgate.xdp*',
                '~/Library/Preferences/com.electron.appgate.helper.plist',
                '~/Library/Preferences/com.electron.appgate.plist',
                '~/Library/Application\ Support/appgate-ui',
                '~/Library/Application\ Support/appgatexdp-ui',
                '~/Library/Saved\ Application\ State/com.electron.appgate.savedState',
                '~/Library/Caches/com.cryptzone.appgate.xdp.uninstall',
              ]
end
