cask 'dnscrypt' do
  version '1.0.14'
  sha256 '47da81eef9e04762e9db7141dc4fdb26681940ab747677b22af50ce79b2b48bf'

  url "https://github.com/alterstep/dnscrypt-osxclient/releases/download/#{version}/dnscrypt-osxclient-#{version}.dmg"
  appcast 'https://github.com/alterstep/dnscrypt-osxclient/releases.atom',
          checkpoint: '5c70d1cacc0474db72080234398d44dfc9b85839261ddebbf72d060ab158cdb8'
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
                       ]
end
