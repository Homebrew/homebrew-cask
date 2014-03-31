class Mamp < Cask
  url 'http://downloads8.mamp.info/MAMP-PRO/releases/3.0.2/MAMP_MAMP_PRO_3.0.2.pkg'
  homepage 'http://www.mamp.info/en/index.html'
  version '3.0.2'
  sha256 '060cc78b6457776a64a864ee69de7e52c95ac2332e906fe4b4afb65826207315'
  install 'MAMP_MAMP_PRO_3.0.2.pkg'
  after_install do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', "#{Etc.getpwuid(Process.euid).name}:staff", '/Applications/MAMP', '/Applications/MAMP PRO'
  end
  uninstall :pkgutil => 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg'
end
