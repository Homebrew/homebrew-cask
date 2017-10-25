cask 'clover-configurator' do
  version '4.54.0.0'
  sha256 'd797a0225d6296552a4a4c63bb00844fe42bb6db19b394e3c0c69cdf427b50a6'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '423df19534d2526a9fb119b6274bd6d0519481eb16216b021750ddccffd9045a'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
