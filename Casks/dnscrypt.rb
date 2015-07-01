cask :v1 => 'dnscrypt' do
  version '1.0.7'
  sha256 '3c27813d689a06b570db5a304209f525fc0b33d619f4e13a265edb4b139123e1'

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
