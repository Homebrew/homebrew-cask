cask :v1 => 'googleappengine' do
  version '1.9.25'
  sha256 'e3b69ef42262477a2e925783a8ce8856d81ffc4535595bd43d2d57d1e7d1c3ac'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '4981d218798ee2a124921c980c8c8a71b3538ddeb6f8b1d56ab97e4d6b1cca69'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
