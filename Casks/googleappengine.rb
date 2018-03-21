cask 'googleappengine' do
  version '1.9.67'
  sha256 'c32ec08dc4783c49149486cf9d2990e7fe5e14d4bfeed1ae5dbdf073216fce54'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '196d23b35237839d9f67d1cc3da03c3326c3a94f962dda7f0430728ff5f8b32d'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
