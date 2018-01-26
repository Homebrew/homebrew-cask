cask 'dnscrypt' do
  version '1.0.14'
  sha256 '47da81eef9e04762e9db7141dc4fdb26681940ab747677b22af50ce79b2b48bf'

  url "https://github.com/alterstep/dnscrypt-osxclient/releases/download/#{version}/dnscrypt-osxclient-#{version}.dmg"
  appcast 'https://github.com/alterstep/dnscrypt-osxclient/releases.atom',
          checkpoint: '6b13fdad0f4aea1215133d485319946f98a1ef63a263de7c3776bbc06a209b7e'
  name 'DNSCrypt'
  homepage 'https://github.com/alterstep/dnscrypt-osxclient'

  pkg 'DNSCrypt.pkg'

  uninstall quit:      'com.github.dnscrypt-osxclient.DNSCrypt-Menubar',
            pkgutil:   'com.github.dnscrypt-osxclient.dnscryptClient.*',
            launchctl: [
                         'com.github.dnscrypt-osxclient.DNSCryptAfterboot',
                         'com.github.dnscrypt-osxclient.DNSCryptConsoleChange',
                         'com.github.dnscrypt-osxclient.DNSCryptControlChange',
                         'com.github.dnscrypt-osxclient.DNSCryptNetworkChange',
                       ],
            delete:    '/Library/PreferencePanes/DNSCrypt.prefPane'

  zap trash: [
               '/Library/Application Support/DNSCrypt',
               '/usr/local/etc/dnscrypt-proxy.conf',
             ]
end
