cask 'raven-reader' do
  version '0.7.9'
  sha256 'e4c283171f6efe512bd7d9221a4ce4c117a96e0412410b601508164c1599c247'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
