cask :v1 => 'googleappengine' do
  version '1.9.21'
  sha256 '0b218cc5d695ddc6e0135489504e79a37e6ae297295e026fd2fdb5d7b417905d'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '4981d218798ee2a124921c980c8c8a71b3538ddeb6f8b1d56ab97e4d6b1cca69'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
