class Mamp < Cask
  version '3.0.5'
  sha256 '773c5c2b4f55b8f30e0cbbba080432b07f3424229c26ff52d65790bfc6f5b270'

  url 'http://downloads2.mamp.info/MAMP-PRO/releases/3.0.5/MAMP_MAMP_PRO_3.0.5.pkg'
  homepage 'http://www.mamp.info/en/index.html'

  install 'MAMP_MAMP_PRO_3.0.5.pkg'
  after_install do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", '/Applications/MAMP', '/Applications/MAMP PRO'
  end
  uninstall :pkgutil => 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg',
            :files   => [
                         '/Applications/MAMP',
                         '/Applications/MAMP PRO',
                        ]
end
