cask :v1 => 'googleappengine' do
  version '1.9.30'
  sha256 '11f28ae1f343ad44102e79e94887465c7a7ed9daa1c2cc749bb3b921e64a447f'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '4d1c93104230e3d96a7dffe78261d6e48e103a6972a59f22610e75b2c855871c'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
