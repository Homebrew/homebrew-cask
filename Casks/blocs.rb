cask 'blocs' do
  version '1.5.3'
  sha256 'd0263d88c2c17a84c431435ac1fb8f82b5ecb459b4967530a16466e1721360c5'

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  appcast 'https://uistore.io/blocs/info.xml',
          checkpoint: '9b50145fe34ffdaa2bd3aaba7dca5e94463dbdc4cbc8db252553036ff8f904e0'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
