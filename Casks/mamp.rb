cask :v1 => 'mamp' do
  version '3.0.7.3'
  sha256 '840877041af7a06d50a3ddc67030ae4f193f70add473ebad0f7418daf80cd553'

  url "http://downloads4.mamp.info/MAMP-PRO/releases/#{version}/MAMP_MAMP_PRO_#{version}.pkg"
  homepage 'http://www.mamp.info/en/index.html'
  license :unknown    # todo: improve this machine-generated value

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
