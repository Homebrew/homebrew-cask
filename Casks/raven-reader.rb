cask 'raven-reader' do
  version '0.8.0'
  sha256 '83e31fb5ecc770b49d46370188da039a0fa710d3a7b3489f9e62d4dab45062d4'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
