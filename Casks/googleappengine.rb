cask :v1 => 'googleappengine' do
  version '1.9.28'
  sha256 'bc63f29a0fab4521975107db66031bc9a60cb74f1c5c1b815febc89f3d690de9'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '4981d218798ee2a124921c980c8c8a71b3538ddeb6f8b1d56ab97e4d6b1cca69'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
