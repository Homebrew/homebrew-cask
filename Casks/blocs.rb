cask 'blocs' do
  version '1.6.1'
  sha256 '17b68735f0445c02229fd2c48f2ac16978c2c90ae78a8f0d1245842632a6538a'

  url 'http://blocsapp.com/trial-app/BlocsApp.zip'
  appcast 'https://uistore.io/blocs/info.xml',
          checkpoint: '0024249e69224b791941c756498b101bd2044582a8740b8689ac1a19acd35a81'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  app 'BlocsApp/Blocs.app'
end
