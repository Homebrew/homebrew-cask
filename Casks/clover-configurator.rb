cask 'clover-configurator' do
  version '4.56.0.0'
  sha256 '1c1b2eb238c4bf57dc9301fa1e3d631895cee37a8cca75357f8b03850b5cc1c3'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: 'f23ec91340184f536da923bff4146de28841a109e2b3cb74af045845e4ddfc74'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
