cask 'postman' do
  version '4.0.4'
  sha256 'ab466b6297fde6a18265d7d18063deee3208b8891f9e4d76dafbedd5ac0b34de'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '0e60a1fe80ddbf278093d3dd20235a626218654550863bd2a79a1a9174568f7b'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
