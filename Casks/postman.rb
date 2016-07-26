cask 'postman' do
  version '4.4.3'
  sha256 '3f8130c0147f1f3ccf5fbfac04017645c5de2917d41fd73bbcb91c2be3dd1217'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'e32bd6292b0a6910d4d23ae7878e1d01e9dd4a7c5fd1407430e2f07d93d1f9ea'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
