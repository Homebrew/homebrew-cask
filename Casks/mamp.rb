cask :v1 => 'mamp' do
  version '3.1'
  sha256 '62d09243465007335deba5fc5a3979f0bf44695f07494216fc8fa786cdfcaf8a'

  url "http://downloads.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  name 'MAMP'
  homepage 'http://www.mamp.info/'
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
