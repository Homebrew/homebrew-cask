cask 'postman' do
  version '4.1.1'
  sha256 '565beac7d880153ca20ceb8096bb76fe7478ddf964c3ee69f4c78fcc55f5aed1'

  # s3.amazonaws.com/postman-electron-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/postman-electron-builds/mac/Postman-osx-#{version}.zip"
  appcast 'https://app.getpostman.com/api/electron_updates_auto',
          checkpoint: 'ae6ad6f211c0024b0da3b65984e7eec3474272e22fa6fb97216fdca373d7bf69'
  name 'Postman'
  homepage 'https://www.getpostman.com/'
  license :closed

  app 'Postman.app'
end
