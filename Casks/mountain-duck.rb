cask 'mountain-duck' do
  version '2.3.3.9245'
  sha256 'dc00f673b087d117cb5881c1bfe16f31c4de6b41e4a5d8534d847b1b33cc7c55'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '478ba8c2f78938fa9e2fc8374317097645d6afcc7777c2ea02aefe6f14268488'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
