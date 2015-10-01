cask :v1 => 'nomachine' do
  version '4.6.16_1'
  sha256 'd837380a5cf91e8c4331558784a96df66652d66b60f9362791d2047d610fa3a5'

  url "http://download.nomachine.com/download/#{version.split('.')[0..1].join('.')}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'
  license :gratis

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
