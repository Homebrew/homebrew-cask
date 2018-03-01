cask 'googleappengine' do
  version '1.9.66'
  sha256 '442a92feb0129110c5a3f187cf41a24dd625c5958c8382260289ed8ee87e64a4'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '9673b3c6bc2af2db5ed4a4841ad863519a9701e14cec6997287ab7d24b754db3'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
