cask 'mountain-duck' do
  version '1.8.1.6492'
  sha256 '9ad62ef60f12940a3d17a18ece79e8b123eabe5e8b9c9d444eec9fe69e34b65a'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '8f903d77378f0bed90781c16132e759846ea7fa35bc53fc849125014f7b02816'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
