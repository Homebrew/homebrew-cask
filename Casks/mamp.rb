class Mamp < Cask
  url 'http://downloads7.mamp.info/MAMP-PRO/releases/3.0.4/MAMP_MAMP_PRO_3.0.4.pkg'
  homepage 'http://www.mamp.info/en/index.html'
  version '3.0.4'
  sha256 '786538ce247870af4bfbf0195e73d6b67e08fda41c5f8822bbf5154c31402d1a'
  install 'MAMP_MAMP_PRO_3.0.4.pkg'
  after_install do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', "#{Etc.getpwuid(Process.euid).name}:staff", '/Applications/MAMP', '/Applications/MAMP PRO'
  end
  uninstall :pkgutil => 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg',
            :files   => [
                         '/Applications/MAMP',
                         '/Applications/MAMP PRO',
                        ]
end
