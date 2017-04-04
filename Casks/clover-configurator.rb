cask 'clover-configurator' do
  version '4.41.1'
  sha256 'b766115c850e0d3b05d525ec4a8b13938693624d6bd5eb16c1f82ef16e923a8f'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: 'a6b68978dc7d98c6d163fd22ddd185db41cdc56ef1670fb4b892655ae578b5a5'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
