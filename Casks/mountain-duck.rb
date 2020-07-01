cask 'mountain-duck' do
  version '4.0.1.16800'
  sha256 '8eb4724d23388ae6bf7eb1c139905e24e7fd238cd48d4145c91bc7918bf598c6'

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
