cask :v1 => 'nomachine' do
  version '4.6.12_1'
  sha256 'bd930ea773876b4a2fb88e9e56e1908b047a558985b06ca6f07249779d91f16b'

  url "http://download.nomachine.com/download/#{version.split('.')[0..1].join('.')}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'NoMachine.pkg'
  # a launchctl job ordinarily manages uninstall once the app bundle is removed

  uninstall :delete => '/Applications/NoMachine.app'
  # however, we duplicate the uninstall process manually in the zap stanza just in case
  zap :early_script => {
                        :executable  => '/bin/rm',
                        :args        => ['-f', '--', '/Library/Application Support/NoMachine/nxuninstall.sh']
                       },
              :quit => 'com.nomachine.nxdock',
              :kext => [
                        'com.nomachine.driver.nxau',
                        'com.nomachine.driver.nxtun',
                        'com.nomachine.kext.nxfs',
                       ],
           :pkgutil => 'com.nomachine.nomachine.NoMachine.*',
         :launchctl => 'com.nomachine.uninstall'
end
