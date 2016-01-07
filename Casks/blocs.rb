cask 'blocs' do
  version '1.5.3'
  sha256 'd0263d88c2c17a84c431435ac1fb8f82b5ecb459b4967530a16466e1721360c5'

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  appcast 'https://uistore.io/blocs/info.xml',
          :sha256 => 'a2f5e79a1f8f39936a6c888300c93bc6e333ba215479d18d60263e7e7c9c8711'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
