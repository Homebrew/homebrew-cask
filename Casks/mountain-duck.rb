cask 'mountain-duck' do
  version '2.0.1.8029'
  sha256 '243e33a32437576ccb39cae358bfdc4c746cd30f58389553d16bad42ca764059'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '2139ad260e7e54b712952ef006934b248616c5cbe4557c1006ecc2d28bcd5a76'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
