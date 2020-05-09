cask 'raven-reader' do
  version '0.7.6'
  sha256 'e3c2350da9b5e7f2f17a4f55063be3303b5a2527ec2137231fb446eaa484a6a4'

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast 'https://download.ravenreader.app/ravenreader/latest-mac.yml'
  name 'Raven Reader'
  homepage 'https://ravenreader.app/'

  auto_updates true

  app 'Raven Reader.app'
end
