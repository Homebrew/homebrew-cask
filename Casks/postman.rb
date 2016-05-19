cask 'postman' do
  version '4.2.0'
  sha256 '04bc591667fcf9201876a1ab79d2002c4f1964b417915ae36c24cc6961c054cf'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: '834663ff1cf079d09854c43a903098736fdbeb37c070cf48323f54a4fb8f5720'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
