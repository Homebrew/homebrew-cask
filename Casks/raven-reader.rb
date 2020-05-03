cask 'raven-reader' do
  version '0.7.5'
  sha256 '8dc0945313cf14ec99a3e4ca8b294caece485efa3c72d41a34cc87cf9f5751e0'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
