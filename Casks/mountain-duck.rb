cask 'mountain-duck' do
  version '2.6.3.9605'
  sha256 '6ac45d048bd4cb43a31c83d98904608565ebc94a7236a2935d085080db8b0faa'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
