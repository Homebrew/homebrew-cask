cask 'clover-configurator' do
  version '4.60.3.2'
  sha256 '8b974884c0e33e853cd291c45cebac3758a98960fd20372062c16fed7a1024b9'

  url 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/CCV.zip'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: 'dd81c248c1013d04faacd85da450aaac111333ed7618bcfc6da3b97c79ca0010'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
