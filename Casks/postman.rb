cask 'postman' do
  version '4.0.2'
  sha256 '8223cb89f6ebf937ea9a3237612b4ea52742c39e8f8745264e29ec4ef070467d'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'cd3facb38b5b966e444fcb92e1fa3908e8c3d7be8290328d23a6596c9692bddb'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
