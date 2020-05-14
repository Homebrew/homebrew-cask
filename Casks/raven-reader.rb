cask 'raven-reader' do
  version '0.7.7'
  sha256 'f8b8ea1c8b2ad6218c88a05ab32f782f1af904a587bb8ebd56f9d1ccb3aa7bde'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
