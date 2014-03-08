class Mamp < Cask
  url 'http://downloads9.mamp.info/MAMP-PRO/releases/3.0.1/MAMP_MAMP_PRO_3.0.1.pkg'
  homepage 'http://www.mamp.info/en/index.html'
  version '3.0.1'
  sha256 'd43ff397203bef82f80dd237128026f3acc508cea114d560304e3793ca297e0f'
  install 'MAMP_MAMP_PRO_3.0.1.pkg'
  after_install do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', "#{Etc.getpwuid(Process.euid).name}:staff", '/Applications/MAMP', '/Applications/MAMP PRO'
  end
  uninstall :pkgutil => 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg'
end
