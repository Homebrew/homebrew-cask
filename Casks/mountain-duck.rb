cask 'mountain-duck' do
  version '3.1.2.14611'
  sha256 '9c4531b4297aa48f28d81a622699aa65e7ba82f0137c7837477745c6298382d5'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
