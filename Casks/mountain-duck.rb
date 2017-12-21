cask 'mountain-duck' do
  version '2.2.1.8882'
  sha256 '8a5c9bf8b31b3b29e9e00864ed8b3db97f175dcb2c7eb044c72e115bcc4a0f49'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'e746b89242a24e65fb540014b012414b32772b5de55d349f65dc476fb81daf75'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
