cask 'googleappengine' do
  version '1.9.50'
  sha256 '30b7779dfe7c128252ebf06abc061f12ecd065b86f2547e621c22cb57c97a600'

  # storage.googleapis.com/appengine-sdks was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: 'a49fa9fb4f1158d1fa068d1ee70f8a550b4a091c9440e4cf6c7e858c34266416'
  name 'Google App Engine'
  homepage 'https://cloud.google.com/appengine/'

  app 'GoogleAppEngineLauncher.app'
end
