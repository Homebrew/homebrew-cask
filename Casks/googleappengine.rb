cask 'googleappengine' do
  version '1.9.31'
  sha256 '9bd0fd4250cb4204a8d47de8d5c2677ad95d1a5bd0d33f2e737dd4ae4781083e'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          checkpoint: '99c2c3114c554b596751084b3de54f447280461cfe7e691b8759b4e5242843a8'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
