cask 'postman' do
  version '4.1.0'
  sha256 '05f29d2461f32073c5d6abb21cf8cc6c82e0f8b2abe2ea00b63024486fa55917'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'db337489ce94d28eef61524c4b531893ed53b3451cee640b2f8d76a24d586f1d'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
