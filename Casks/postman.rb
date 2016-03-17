cask 'postman' do
  version '4.0.6'
  sha256 'f0d1db9127eba5b536f382a97bd0f4302010cde081e8e2d88137917b7f8267a3'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'd393c0da690de5c76cde542df812460016e821eefb67cb27b095e65a664f95c7'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
