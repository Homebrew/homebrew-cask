cask 'googleappengine' do
  version '1.9.68'
  sha256 '971627c085910c4af866f41f239cf5b2eaa7fbaced65a012ecc2655a65085e77'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: 'bcc3a594a6ebc3da3804ffb88398774b4e81b722072e830bee67d8c245b2b0f5'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
