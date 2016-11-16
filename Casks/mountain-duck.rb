cask 'mountain-duck' do
  version '1.6.3.5079'
  sha256 '652046c4003bdfdccb1dd8aebd68c4dc6e48eb16028a224a8f479e99eaa05f15'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'c5f444c8e14978645c62a3b30af904ec81a8ea1fcaf054ffdd3883c5aee95e6e'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
