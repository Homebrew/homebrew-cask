cask 'blocs' do
  version '1.5.3'
  sha256 'd0263d88c2c17a84c431435ac1fb8f82b5ecb459b4967530a16466e1721360c5'

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  appcast 'https://uistore.io/blocs/info.xml',
          :sha256 => 'd875edd81d4a9c549d31c5969b30297fd3ca798d9a2e0146298bee453611d89d'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
