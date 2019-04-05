cask 'mountain-duck' do
  version '2.7.2.9873'
  sha256 '24e68cd958de9932cd107fc14f192fa2c89ed926ba1b9cb3a93f433007644afb'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
