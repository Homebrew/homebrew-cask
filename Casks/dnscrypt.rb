cask :v1 => 'dnscrypt' do
  version '1.0.3'
  sha256 '08fc0ee0a029a1a99ffc44a0cb5f7f844f41e7fb0a30e31fea714ac103d69557'

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
