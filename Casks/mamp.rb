cask :v1 => 'mamp' do
  version '3.3'
  sha256 '4ae0a04bfd3db982969410045f9297f7b6647b4c0366687c413cfb0da5d90e71'

  url "http://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  name 'MAMP'
  homepage 'https://www.mamp.info/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
