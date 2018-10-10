cask 'googleappengine' do
  version '1.9.74'
  sha256 'c0f5e59ac40c9567b59db4d43f206166d930e91b55b5f1163cff85433bd7325f'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
