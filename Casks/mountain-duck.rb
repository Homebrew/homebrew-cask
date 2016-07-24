cask 'mountain-duck' do
  version '1.4.6.4226'
  sha256 '3906473e6e5bf2b4809b9742967cd0be4697075d7b0db5eb6a4fa91c6cd6bec3'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'b241c1aded57e1352ffa8c4fef2457b08fc16d31d3182d86daa98818ef9ed44f'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
