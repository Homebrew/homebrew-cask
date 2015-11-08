cask :v1 => 'nomachine-enterprise-client' do
  version '5.0.47_1'
  sha256 '091f6338ad1c7a8f23670513555d72979456ea09aa28bd0df317e83d75454f47'

  url "http://download.nomachine.com/download/5.0/MacOSX/nomachine-enterprise-client_#{version}.dmg"
  name 'NoMachine Enterprise Client'
  homepage 'https://www.nomachine.com/download-enterprise'
  license :unknown

  pkg 'NoMachine.pkg'

  uninstall :delete => '/Applications/NoMachine.app'
  # however, we duplicate the uninstall process manually in the zap stanza just in case
  zap :early_script => {
                        :executable  => '/bin/rm',
                        :args        => ['-f', '--', '/Library/Application Support/NoMachine/nxuninstall.sh']
                       },
              :quit => 'com.nomachine.nxdock',
              :kext => [
                        'com.nomachine.driver.nxusb',
                        'com.nomachine.driver.nxtun',
                        'com.nomachine.kext.nxfs',
                       ],
           :pkgutil => 'com.nomachine.nomachine.NoMachine.*',
         :launchctl => 'com.nomachine.uninstall'
end
