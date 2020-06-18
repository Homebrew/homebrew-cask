cask 'mountain-duck' do
  version '4.0.0.16759'
  sha256 '136031edfd7c00f8f783acf6e7a57a53fe57d5fbf2e4c51ffe51e1980f508a19'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  auto_updates true

  app 'Mountain Duck.app'

  zap trash: [
               '~/Library/Application Scripts/io.mountainduck.findersync',
               '~/Library/Containers/io.mountainduck.findersync',
               '~/Library/Group Containers/G69SCX94XU.duck',
               '~/Library/Preferences/io.mountainduck.plist',
             ]
end
