cask 'clover-configurator' do
  version '4.57.2.0'
  sha256 '3a1315e8fc9dd2b424521c40fdded2e045166fb8e7e1a0525785686cc3ac4994'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '7e956af22adf81a0f6be3b42219eb5db5e0d74680a81c4aedf1ee4ae5246129e'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
