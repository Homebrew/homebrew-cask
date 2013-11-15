class Chronoagent < Cask
  url 'http://downloads.econtechnologies.com/CA_Mac_Download.dmg'
  homepage 'http://downloads.econtechnologies.com/CA_Mac_Download.dmg'
  version 'latest'
  no_checksum
  install 'Install.pkg'
end
