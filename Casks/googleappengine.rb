cask 'googleappengine' do
  version '1.9.30'
  sha256 '11f28ae1f343ad44102e79e94887465c7a7ed9daa1c2cc749bb3b921e64a447f'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '48990bfaf757643093baa679b6650bcf5bcb1e0c7b5f73cfe7225c93015f76bd'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
