cask 'googleappengine' do
  version '1.9.84'
  sha256 '222226649685d31703a4771faf48f5bbb546bc267bd36750c5ec5917fc2dd7ff'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/docs/standard/python/download#appengine_sdk/'

  app 'GoogleAppEngineLauncher.app'
end
