cask 'raven-reader' do
  version '0.8.2'
  sha256 '9c4ea41fe0a2d4e12c253e123f45a9fc1bd3b1fbbfbc92f557e6e6698b4819b7'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
