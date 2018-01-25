cask 'nomachine' do
  version '6.0.66_2'
  sha256 'e0be017287821ee88470534cf13a6b3e4855e8664ddf45cfc5a9e54066655d8c'

  url "http://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
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
