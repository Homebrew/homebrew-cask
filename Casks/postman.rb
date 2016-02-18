cask 'postman' do
  version '3.2.16.1'
  sha256 '7d88d8d4854296d7024718ede9db8ec62010ccd04a8ba9759c6d6a4d32c9bab0'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '02dde28c537c02b0be765fa97e2342349b0e5d050ef304e4a4a1a4c1f2ffe635'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
