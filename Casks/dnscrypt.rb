cask :v1 => 'dnscrypt' do
  version '1.0.6'
  sha256 'aef75581cbc8af465c4509ec5d164b1fb5751105eeaadfd7b8f009cf320db11c'

  url "https://github.com/alterstep/dnscrypt-osxclient/releases/download/#{version}/dnscrypt-osxclient-#{version}.dmg"
  appcast 'https://github.com/alterstep/dnscrypt-osxclient/releases.atom'
  name 'DNSCrypt'
  homepage 'https://github.com/alterstep/dnscrypt-osxclient'
  license :oss

  pkg 'DNSCrypt.mpkg'

  uninstall :quit      => 'com.github.dnscrypt-osxclient.DNSCrypt-Menubar',
            :pkgutil   => 'com.github.dnscrypt-osxclient.dnscryptClient.*',
            :launchctl => [
                           'com.github.dnscrypt-osxclient.DNSCryptAfterboot',
                           'com.github.dnscrypt-osxclient.DNSCryptConsoleChange',
                           'com.github.dnscrypt-osxclient.DNSCryptControlChange',
                           'com.github.dnscrypt-osxclient.DNSCryptNetworkChange',
                          ]
end
