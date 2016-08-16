cask 'postman' do
  version '4.6.0'
  sha256 '26e3499e7250a6520ec11d0bdee1be5fd780b82f158a35aaa8c013e9898b2aef'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '0f7dd72aea47d9f0c35a4ccaa172d35dccd664a4816ed2e2f96c4646147503f5'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
