cask 'mountain-duck' do
  version '3.3.6.15539'
  sha256 '56744543ef30538faeebda84120940ad43575e670b4953f470cf23ff875ff039'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
