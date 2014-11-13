cask :v1 => 'chromecast' do
  version '1.5.0.531'
  sha256 '66a70feb3bacb3087fdf4a34300cbc6c54455a8b62a2b340123cc1a03cedcbe9'

  url "https://dl.google.com/chromecast/setup/mac/chromecast-setup.#{version}.dmg"
  homepage 'http://www.google.ca/intl/en/chrome/devices/chromecast/'
  license :unknown

  app 'Chromecast.app'
end
