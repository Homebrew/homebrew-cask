cask 'blocs' do
  version '1.5.3'
  sha256 'd0263d88c2c17a84c431435ac1fb8f82b5ecb459b4967530a16466e1721360c5'

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  appcast 'https://uistore.io/blocs/info.xml',
          checkpoint: '3bcc61938a92444d95bac04365dcb3276f7b54f4c551055f02eef60df3743bb7'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
