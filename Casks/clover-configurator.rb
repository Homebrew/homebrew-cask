cask 'clover-configurator' do
  version '4.43.0'
  sha256 '49b57ec2e05ff0c24079d5b8c02cca690b9b1e339418ebef54537b828a65d909'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '29e0c053d8cca8f3c6fff59fdf2e35e5a4199fb88834e309c7170f6eb7d24951'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
