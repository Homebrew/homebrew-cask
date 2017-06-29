cask 'mountain-duck' do
  version '1.9.4.7101'
  sha256 '40dd8bad5474d4321f8104831b9136c62af38b33284d5a8c745f1e0d33b1fa3b'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'ae9698a6359d5cf43665741f6ba8816113c14da0bd651f3b453f712b189d2b8f'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
