cask 'mountain-duck' do
  version '2.2.0.8793'
  sha256 '548cceddcef6cfc7b2ee1857b920f6d45d08b1c4951f3c44f2f1767871c0abb9'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: 'ce897f0220616b0cbce0f3645dfa7cbbf1d1e1d2372e360695a974ae504bf39c'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
