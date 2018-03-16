cask 'clover-configurator' do
  version '4.60.3.3'
  sha256 'ab04b7dc4a1d1b94e09f3d11725799dd802e78eb37f141666075fda46e1d4957'

  url 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/CCV.zip'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '9b3e0c89c656ad130b20a61639b1189a6ca1cbe7ebd8b8819b10c47fc61b3480'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
