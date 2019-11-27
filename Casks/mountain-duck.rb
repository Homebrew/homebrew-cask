cask 'mountain-duck' do
  version '3.3.0.15232'
  sha256 '153309ad3c93c686c86812c04139362981c36f37e8800c25b204474b23b59765'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
