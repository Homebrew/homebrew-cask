cask 'blocs' do
  version '1.6.0'
  sha256 'a175f1d1f83de76733ecd4f08c12df57572df46a29ddbb32ebb011f8e86c9f37'

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  appcast 'https://uistore.io/blocs/info.xml',
          checkpoint: '68ac9f2cf7119fbe00f0280028fa169dd900d64a13e9cf91d88e6cf5bb2587b4'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
