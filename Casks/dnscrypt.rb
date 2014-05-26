class Dnscrypt < Cask
  url 'https://github.com/alterstep/dnscrypt-osxclient/releases/download/1.0.1/dnscrypt-osxclient-1.0.1.zip'
  homepage 'http://opendns.github.io/dnscrypt-osx-client/'
  version '1.0.1'
  sha256 'ac10e1bdcf525208fe24bf773c72a27cd540e15229487dcd042a69e19717e8fe'
  install 'DNSCrypt.mpkg'
  uninstall :pkgutil => 'com.opendns.osx.dnscryptClient.*',
            :launchctl => 'com.opendns.osx.*'
end
