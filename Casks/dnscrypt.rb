cask :v1 => 'dnscrypt' do
  version '1.0.8'
  sha256 '47954b33b6133fbc1c8736963797cc342874c25d50a1989990a29bb8c8173d04'

  url "https://github.com/alterstep/dnscrypt-osxclient/releases/download/#{version}/dnscrypt-osxclient-#{version}.dmg"
  appcast 'https://github.com/alterstep/dnscrypt-osxclient/releases.atom'
  name 'DNSCrypt'
  homepage 'https://github.com/alterstep/dnscrypt-osxclient'
  license :oss

  pkg 'DNSCrypt.pkg'

  uninstall :quit      => 'com.github.dnscrypt-osxclient.DNSCrypt-Menubar',
            :pkgutil   => 'com.github.dnscrypt-osxclient.dnscryptClient.*',
            :launchctl => [
                           'com.github.dnscrypt-osxclient.DNSCryptAfterboot',
                           'com.github.dnscrypt-osxclient.DNSCryptConsoleChange',
                           'com.github.dnscrypt-osxclient.DNSCryptControlChange',
                           'com.github.dnscrypt-osxclient.DNSCryptNetworkChange',
                          ]
end
