cask 'postman' do
  version '4.0.3'
  sha256 '465c0ed0e07be1aea755c489d1d62f8fa5caf76f10ff15564e4707bd6a24f6d3'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'b87bee4e410346a559c18ea9f31fac39af357c05e2be0771827f4784b8db6772'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
