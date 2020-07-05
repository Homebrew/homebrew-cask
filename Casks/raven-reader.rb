cask 'raven-reader' do
  version '0.8.3'
  sha256 'e1d2796df71d2c0202ac4929aeecb548cc0e2fb6e54f392cd2eddade2ab5776a'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
