cask 'googleappengine' do
  version '1.9.88'
  sha256 'bab9bb747ac0bd9a5ecf63dd0d84ebe020c8c126bab76b5c5efdf9ba1a97d5f9'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks/featured/VERSION'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/docs/standard/python/download#appengine_sdk/'

  app 'GoogleAppEngineLauncher.app'
end
