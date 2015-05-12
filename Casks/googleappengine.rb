cask :v1 => 'googleappengine' do
  version '1.9.20'
  sha256 'a04cb6eb78e70dec9bdfe69a6b4533d6e0cba11a437d8e7ffdae9a894127fa3b'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '5b5ecde4e5248662ad27a8fd0da55132be78826ad51e7458dfe7b20d65a83d89'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
