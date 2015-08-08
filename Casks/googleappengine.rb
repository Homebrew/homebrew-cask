cask :v1 => 'googleappengine' do
  version '1.9.24'
  sha256 '0b3410ef8240d6b88b792e2e58a3ce0299dc3830778db3e0f1d9f7eb2b8f608c'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '4981d218798ee2a124921c980c8c8a71b3538ddeb6f8b1d56ab97e4d6b1cca69'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
