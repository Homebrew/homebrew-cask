cask :v1 => 'mamp' do
  version '3.0.7.2'
  sha256 'a6e72143efa73eb919efeb0e9dc0089e291204676da37e9508ac53c2f51f8878'

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
