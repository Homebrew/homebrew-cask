cask 'clover-configurator' do
  version '4.53.0.0'
  sha256 '7cebdc5551cdebc597c4ae3b3272e01a1053ac032f2ff7fab709a1669e0e832c'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '7083a1a5af803234e8390650c62234581e44688bba4611891b12407ef6602608'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
