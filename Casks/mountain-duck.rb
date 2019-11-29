cask 'mountain-duck' do
  version '3.3.1.15247'
  sha256 'cab1e00714c916354ee10e39d2a6b9cf9c88c6b930baed63b7aea148440ea85f'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
