cask :v1 => 'dnscrypt' do
  version '1.0.4'
  sha256 '14e08b4e4bba7e7a0761e318eca559a980e95dc46fafd7251011785f0cf10993'

  url "https://github.com/alterstep/dnscrypt-osxclient/releases/download/#{version}/dnscrypt-osxclient-#{version}.dmg"
  homepage 'http://opendns.github.io/dnscrypt-osx-client/'
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
