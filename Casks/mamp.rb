class Mamp < Cask
  version '3.0.7.1'
  sha256 'ec80adf7ed676de48c712d08918bcbf45e340bde6d9e0510b72c22565465b90b'

  url "http://downloads4.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  homepage 'http://www.mamp.info/en/index.html'
  license :unknown

  pkg "MAMP_MAMP_PRO_#{version}.pkg"
  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", '/Applications/MAMP', '/Applications/MAMP PRO'
  end
  uninstall :pkgutil => 'de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg',
            :delete  => [
                         '/Applications/MAMP',
                         '/Applications/MAMP PRO',
                        ]
end
