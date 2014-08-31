class Mamp < Cask
  version '3.0.6'
  sha256 'c615d4107a8b1ffee204b93af3809f6d46e9ddc3dfe05d79dd65c41d2aeec050'

  url 'http://downloads9.mamp.info/MAMP-PRO/releases/3.0.6/MAMP_MAMP_PRO_3.0.6.pkg'
  homepage 'http://www.mamp.info/en/index.html'

  install 'MAMP_MAMP_PRO_3.0.6.pkg'
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
