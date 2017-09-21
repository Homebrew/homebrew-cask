cask 'clover-configurator' do
  version '4.51.1.0'
  sha256 '5a08b372e2990aa605f9daa38ddc6583d1962f9c1f9f4a7dbddb1f1a91fb39a9'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: 'e511673d9d7b8612d77361a6ee98daee76b2b45029dfe5bc114c9444b63dc34d'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
