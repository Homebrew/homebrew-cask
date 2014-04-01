class Mamp < Cask
  url 'http://downloads2.mamp.info/MAMP-PRO/releases/3.0.3/MAMP_MAMP_PRO_3.0.3.pkg'
  homepage 'http://www.mamp.info/en/index.html'
  version '3.0.3'
  sha256 '1e23c4777a91e7d4181afb8865dc84e1b07ff01d67c843299834e6f8c747e9da'
  install 'MAMP_MAMP_PRO_3.0.3.pkg'
  after_install do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', "#{Etc.getpwuid(Process.euid).name}:staff", '/Applications/MAMP', '/Applications/MAMP PRO'
  end
  uninstall :pkgutil => 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg'
end
