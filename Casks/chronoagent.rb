class Chronoagent < Cask
  url 'http://downloads.econtechnologies.com/CA_Mac_Download.dmg'
  homepage 'http://www.econtechnologies.com'
  version 'latest'
  sha256 :no_check
  install 'Install.pkg'
  uninstall :pkgutil => 'com.econtechnologies.pkg.ChronoAgent'
end
