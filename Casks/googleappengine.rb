cask :v1 => 'googleappengine' do
  version '1.9.19'
  sha256 '11482519a7ad8b4d5dac51dc8e33f2486d3925af2856803910abbba3b2abf891'

  # googleapis.com is the official download host per the vendor homepage
  url "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  appcast 'https://storage.googleapis.com/appengine-sdks',
          :sha256 => '5b5ecde4e5248662ad27a8fd0da55132be78826ad51e7458dfe7b20d65a83d89'
  name 'Google App Engine'
  homepage 'https://developers.google.com/appengine/'
  license :apache

  app 'GoogleAppEngineLauncher.app'
end
