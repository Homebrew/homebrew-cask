cask 'postman' do
  version '4.0.5'
  sha256 'b1ac49d2647081c77a639037ab992fb2fb248e8f89886c7bffbb689b3bdd2aba'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '2b8c898582006a030317384d365a9cc4330af5ba94d5a633076bf4283532fd17'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
