cask 'postman' do
  version '4.4.1'
  sha256 '6d2f114e6c56d23e0fa6e6c1d1fe263be55a7b4a9a4da53e7ff49512c390d68b'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '3d361f2a04add4047aea0c7a4c221f8e1c5f016af94d6746716136a640886946'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
