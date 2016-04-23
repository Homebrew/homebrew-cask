cask 'mountain-duck' do
  version '1.3.1.3743'
  sha256 '735bd8444c37b7f72c8d36aee5d49873319a63e0a619fd2d645acab81a166c7e'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '148b8fdc7730b288726b2a0c86d706567af586331859e227505d16cf9a20ab44'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
