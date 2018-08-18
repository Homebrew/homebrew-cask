cask 'mountain-duck' do
  version '2.6.2.9565'
  sha256 '8f053c286bf8430b01b561f7b729789c51f827d61ae74bd62ea684af142dad48'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
