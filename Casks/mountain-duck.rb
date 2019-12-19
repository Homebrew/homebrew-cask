cask 'mountain-duck' do
  version '3.3.2.15372'
  sha256 '15d7f48c058246dbb059ff9cbc28443d39c04a8874b02274c10829a088931770'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
