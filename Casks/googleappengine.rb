cask 'googleappengine' do
  version '1.9.34'
  sha256 '8f5facaef77a9515286374298a85d4229001db37cddfd01a5cb28be4353f0223'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: 'b7d03ab86c4bfc8ef0d8c4cefc227763996b7b4f49d4e54f9f9c60b8c92d58f3'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
