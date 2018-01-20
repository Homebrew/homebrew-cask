cask 'googleappengine' do
  version '1.9.62'
  sha256 '8a002f190d736658e9431dd463587e522b58de78c13158c3db09d882e4afa5bf'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '0335f0f195bc6741d43e8c829d9863eb3016326fed6129735af0c9da7823736a'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
