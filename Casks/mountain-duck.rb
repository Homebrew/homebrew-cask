cask 'mountain-duck' do
  version '2.6.7.9723'
  sha256 '97f64b8dbe805aaf45dd296be6e81a5dda1cc5541548432d332e9a6e40d5d53a'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
