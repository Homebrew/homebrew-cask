cask 'mountain-duck' do
  version '3.3.5.15470'
  sha256 '10c4450d360e99a164342d426289dd2f9554c19684fc10f150e6e4f719c52f3e'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
