cask 'postman' do
  version '4.5.1'
  sha256 '49c1f00a58e9a192102fcdc8b679cce6bd094e5f7784522e7ce06176995ff310'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '1f2fc21c3e65787457b002bdef5fce80f1ecdff18a56c2fc3de126c844c2f212'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
