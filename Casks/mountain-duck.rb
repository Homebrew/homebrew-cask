cask 'mountain-duck' do
  version '1.5.0.4671'
  sha256 '83ae079aed4f3e8c0827582207d82c4e46a83715e5816ded4233ddc9ecd00bc0'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'f054f37fce74234d45dbc19e4f09743f349fe7a6148224de25382f7bcdedf5e4'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
