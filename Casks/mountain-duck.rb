cask 'mountain-duck' do
  version '1.9.5.7106'
  sha256 '9734dc8d84ad280c02abb106120810a5f7188f3712917cf03d0c1773fa754c75'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'b6e902ea6a67b0783eb353bb2885e17d1a54fb2a337adc10ef47b2f532c7d188'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
