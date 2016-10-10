cask 'dnscrypt' do
  version '1.0.12'
  sha256 'f3badcc535933cfc7bdae7b0cb1e0f7d89a46d1fb085f4f3baff3b8d4f38a797'

  url "https://github.com/alterstep/dnscrypt-osxclient/releases/download/#{version}/dnscrypt-osxclient-#{version}.dmg"
  appcast 'https://github.com/alterstep/dnscrypt-osxclient/releases.atom',
          checkpoint: '29c595e8cc826a70d1f0bee7a30930f53ba3f06d1a4e422879bf92bac139ddad'
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
