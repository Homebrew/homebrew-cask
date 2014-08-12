class Nomachine < Cask
  version '4.2.27_1'
  sha256 'b210543612f9f99e120b356ef38754bd9b8f20c54d5d657e88a1d73b644cf145'

  url "http://download.nomachine.com/download/#{version.split('.')[0..1].join('.')}/MacOSX/nomachine_#{version}.dmg"
  homepage 'http://www.nomachine.com'

  install 'NoMachine.pkg'
  # a launchctl job ordinarily manages uninstall once the app bundle is removed
  uninstall :files => '/Applications/NoMachine.app'
  # todo for future use when zap is documented
  # zap :early_script => {
  #                       :executable  => '/bin/rm',
  #                       :args        => ['-f', '--', '/Library/Application Support/NoMachine/nxuninstall.sh']
  #                      },
  #             :quit => 'com.nomachine.nxdock',
  #             :kext => [
  #                       'com.nomachine.driver.nxau',
  #                       'com.nomachine.driver.nxtun',
  #                       'com.nomachine.kext.nxfs',
  #                      ],
  #          :pkgutil => 'com.nomachine.nomachine.NoMachine.*',
  #        :launchctl => 'com.nomachine.uninstall'
end
