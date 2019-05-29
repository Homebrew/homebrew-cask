cask 'optimage' do
  version '2.3.5'
  sha256 '38165a96a9c9b178b9493fd609af6d1dc1cf36e260faca70507ddbf5ee1facb3'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true

  app 'Optimage.app'
end
