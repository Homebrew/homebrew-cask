cask 'rhodes-kite' do
  version '1.9.3'
  sha256 '2e38a2053feb13804da43ecea299211ebd194ac7afdae1bc8567aef6a6402cde'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
