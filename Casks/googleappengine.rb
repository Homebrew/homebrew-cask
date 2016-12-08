cask 'googleappengine' do
  version '1.9.49'
  sha256 '2186549547beadd7db2b6d4d5abd9ef56f087972707d9c0612e7198c4e8ca189'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '1bb10259a94fd2324be01d0d74dcdcf8ac523d32b014d3e0bec33cdb22d61bd1'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
