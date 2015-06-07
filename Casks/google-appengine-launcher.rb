cask :v1 => 'googleappengine' do
  version '1.9.21'
  sha256 '0b218cc5d695ddc6e0135489504e79a37e6ae297295e026fd2fdb5d7b417905d'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '5b5ecde4e5248662ad27a8fd0da55132be78826ad51e7458dfe7b20d65a83d89'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
