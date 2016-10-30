cask 'mountain-duck' do
  version '1.6.1.5018'
  sha256 '2d34cf06ba4180ec1e2476f0f1012f13f42799626db2e132c73d0796351936b5'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'a9558f1e26ccacdb0b76566a5370c8cd2b11aa5b5b7763c6529f0044f1f4fd90'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
