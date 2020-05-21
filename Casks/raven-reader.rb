cask 'raven-reader' do
  version '0.7.8'
  sha256 '2454f63b9db2a1c3068197b1697a499625bb0a23c58e5a1cba491f92c77c1674'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
