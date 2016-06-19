cask 'postman' do
  version '4.3.2'
  sha256 '4716c4979fe5470f46af423f5fa8cea663778bf9c3f1ef7a78d94ffaedfd56a2'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'dfcdcac83f9a2d2afef9c6e6252f1468913c55135e27e0fa5fc87848d63cfc0a'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
