cask 'nomachine' do
  version '5.0.58_1'
  sha256 '736fae5bf03f437ae3b518e12ab359a8be1fe73de037ea881b31cf5028883b85'

  url "http://download.nomachine.com/download/#{version.split('.')[0..1].join('.')}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'
  license :gratis

  pkg 'NoMachine.pkg'

  # a launchctl job ordinarily manages uninstall once the app bundle is removed

  uninstall :delete => '/Applications/NoMachine.app'

  # however, we duplicate the uninstall process manually in the zap stanza just in case
  zap :early_script => {
                         :executable => '/bin/rm',
                         :args       => ['-f', '--', '/Library/Application Support/NoMachine/nxuninstall.sh'],
                       },
      :quit         => 'com.nomachine.nxdock',
      :kext         => [
                         'com.nomachine.driver.nxau',
                         'com.nomachine.driver.nxtun',
                         'com.nomachine.kext.nxfs',
                       ],
      :pkgutil      => 'com.nomachine.nomachine.NoMachine.*',
      :launchctl    => 'com.nomachine.uninstall'
end
