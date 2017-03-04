cask 'mountain-duck' do
  version '1.7.1.6290'
  sha256 'cdc753359863a628ce804766cc5daeae7ce2841853535600801011916c1049cd'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '934e083df0d5e6936e8805eef30f06c2d62f96e03816ca143f0e90762feb07f0'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
