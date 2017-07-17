cask 'googleappengine' do
  version '1.9.57'
  sha256 '97221c0940e59912f5d9fa2a2abc1bb621d5227d48728fee87a9df44bb95a4ff'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '7166c0d3489f06f5e5c40e7a53443d0bdf0f8ff92a0f0740363fa0f7bc841bfe'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
