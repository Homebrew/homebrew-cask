cask 'googleappengine' do
  version '1.9.87'
  sha256 '68b3e5524bf5f20adccb066f30a45496407883cd82b7196cb720822c65a82e65'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks/featured/VERSION'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/docs/standard/python/download#appengine_sdk/'

  app 'GoogleAppEngineLauncher.app'
end
