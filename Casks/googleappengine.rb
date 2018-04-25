cask 'googleappengine' do
  version '1.9.69'
  sha256 '11113c69fffd3fb8301df437c6bb4eb0f55339540675828c3b83dba485ad5c92'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: 'e7bccfe2f5f40681cfc3cfcaefb40fabddb87327cda4789c6964453ffbd74599'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
