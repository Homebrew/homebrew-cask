cask 'clover-configurator' do
  version '4.44.0'
  sha256 '5c389cc4fcd45c259c64e576178edb554ec9a7ed52291256be547447dbbc2dac'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '543a1d547d7a0f9d0b21d5d3e5fde234de6dc7501fb8332e0a7caa6f7749f0e8'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
