cask 'raven-reader' do
  version '0.7.9'
  sha256 '1d6870f170a3e338beede297e88cf8ee09dffcccd952cd9615a1704f1b34f2cc'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
