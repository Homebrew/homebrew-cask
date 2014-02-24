class Dnscrypt < Cask
  url 'http://download.dnscrypt.org/guis/opendns/osx/dnscrypt-osx-client-0.19.dmg'
  homepage 'http://opendns.github.io/dnscrypt-osx-client/'
  version '0.19'
  sha256 '36b684cc1a90a540e8c38759f509914818a1d3ca0e374ea0ab82e259cb72e1ec'
  install 'DNSCrypt.mpkg'
end
