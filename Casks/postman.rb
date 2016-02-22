cask 'postman' do
  version '4.0.0'
  sha256 'ce8a7764dc5d69c00ba0c6eb96252b421ac6262f01642dcc59839832b0d46019'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '826ce98c6d5bebb596e144db19e023776cff011accfd31c1e3b0a5a3f6321389'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
