cask 'googleappengine' do
  version '1.9.31'
  sha256 '9bd0fd4250cb4204a8d47de8d5c2677ad95d1a5bd0d33f2e737dd4ae4781083e'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '6b8a72e7a379562c9f351844ea7b5da9b4596d142e9fb51eb3b2b9cd3f42fb4c'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
