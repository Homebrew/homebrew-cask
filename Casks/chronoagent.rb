class Chronoagent < Cask
  url 'http://downloads.econtechnologies.com/CA_Mac_Download.dmg'
  homepage 'http://www.econtechnologies.com'
  version 'latest'
  no_checksum
  install 'Install.pkg'
end
