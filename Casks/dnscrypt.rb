cask 'dnscrypt' do
  version '1.0.13'
  sha256 'b876fe05afa64c68987336d1ba169ee5f185d7d2e6dc29b8b2b0b52b2a2e04e8'

  url "https://github.com/alterstep/dnscrypt-osxclient/releases/download/#{version}/dnscrypt-osxclient-#{version}.dmg"
  appcast 'https://github.com/alterstep/dnscrypt-osxclient/releases.atom',
          checkpoint: '1b199b80da7f17394da9ee93061ab9c76f2ee031374bfc405178e0c9b09c1f32'
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
