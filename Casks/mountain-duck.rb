cask 'mountain-duck' do
  version '3.3.4.15443'
  sha256 '6bfc4235ae7a1e7c8c7901eb0499d78dce0df07cacbd5b952743c9016b6e2703'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
