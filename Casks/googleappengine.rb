cask 'googleappengine' do
  version '1.9.70'
  sha256 '39490082740a4f571523051282296b5bb74d1d3773c14533fb12a037c9f434c1'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '454a640b5b63498c88c73bd77471d66ea12e6832522fbc0b3ee583119abfb823'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
