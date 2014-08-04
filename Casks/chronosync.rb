class Chronosync < Cask
  version 'latest'
  sha256 :no_check

  url 'http://downloads.econtechnologies.com/CS4_Download.dmg'
  homepage 'http://www.econtechnologies.com'

  install 'Install.pkg'
  uninstall :pkgutil => 'com.econtechnologies.pkg.ChronoSyncApplication'
end
