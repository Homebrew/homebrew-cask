cask 'clover-configurator' do
  version '4.60.0.0'
  sha256 '1af0b0efea37e89b685939d9a83aacd9d42a367a1e3408df3c92d1cb394bdee2'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: 'fb8417e60dd3ed53126805324f97b4acc5765fbadda72ccc45ccef35bf91d020'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
