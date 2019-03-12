cask 'googleappengine' do
  version '1.9.83'
  sha256 'd5dbda494025d5d0f4219543395c9aec3e8dc7063ba562cfb49f796bde2240bb'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/docs/standard/python/download#appengine_sdk/'

  app 'GoogleAppEngineLauncher.app'
end
