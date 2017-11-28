cask 'clover-configurator' do
  version '4.57.1.0'
  sha256 'b1faa4daf6c1ca180ed097852ddb4b89cd2c2d71f062b8a7280543da2f8e7981'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '056447053b4cca9ef2904f78d6abc36f70fb05e1df6487aac340cb6a577b8126'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
