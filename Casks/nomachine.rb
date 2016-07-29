cask 'nomachine' do
  version '5.1.26_1'
  sha256 '837d4cc8049ddccef287ad9fec29c4c009f426f56a32b8c8b1396ced2e80b6f8'

  url "http://download.nomachine.com/download/#{version.split('.')[0..1].join('.')}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'
  license :gratis

  pkg 'NoMachine.pkg'

  # a launchctl job ordinarily manages uninstall once the app bundle is removed

  uninstall delete: '/Applications/NoMachine.app'

  # however, we duplicate the uninstall process manually in the zap stanza just in case
  zap early_script: {
                      executable: '/bin/rm',
                      args:       ['-f', '--', '/Library/Application Support/NoMachine/nxuninstall.sh'],
                    },
      quit:         'com.nomachine.nxdock',
      kext:         [
                      'com.nomachine.driver.nxau',
                      'com.nomachine.driver.nxtun',
                      'com.nomachine.kext.nxfs',
                    ],
      pkgutil:      'com.nomachine.nomachine.NoMachine.*',
      launchctl:    'com.nomachine.uninstall'
end
