cask 'nomachine' do
  version '5.1.54_1'
  sha256 '31ea67398ad0f8c2988f5b15d24e0b0f79aff3b58db3d3bce21bfeddfd80e372'

  url "http://download.nomachine.com/download/#{version.split('.')[0..1].join('.')}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

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
