cask :v1 => 'googleappengine' do
  version '1.9.18'
  sha256 'a4487d8e47d18919986d060a61e2ddd8368bbc1d82afee1e2a88d28b6ca15720'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '3c9e6c91de527d13c27d869ec27eab40fac2127726f93000777330de1c2ca442'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
