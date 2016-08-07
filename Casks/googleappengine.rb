cask 'googleappengine' do
  version '1.9.37'
  sha256 'ccc9a88010b8bc62660365395eab9113f73ee9800a528f62464b7f8ee8750c71'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '43853083c43deaedd850a967039980722f7299a5eb9423e1634a78f90dc40d34'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
