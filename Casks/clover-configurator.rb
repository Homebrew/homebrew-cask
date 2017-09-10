cask 'clover-configurator' do
  version '4.50.0.0'
  sha256 'de27be5aeeea22f93fe0f76471aa5e38be9af42949b88cb80038f6d5f912b1a7'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '1294f78b37e114238d74b78efb6cd9fefef29995c2308eae1a679cfc3849f247'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
