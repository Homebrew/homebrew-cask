cask 'mountain-duck' do
  version '3.0.1.14013'
  sha256 'a713d33a9b9f865057a6b1a8ad30568b41666caa65897056247d11e4b07325e4'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
