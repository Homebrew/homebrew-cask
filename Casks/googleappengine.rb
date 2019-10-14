cask 'googleappengine' do
  version '1.9.86'
  sha256 '2e673098fb2a7b3f810ff904dd13905e8a4720e956c7558c10af2c96e334aeea'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks/featured/VERSION'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/docs/standard/python/download#appengine_sdk/'

  app 'GoogleAppEngineLauncher.app'
end
