cask 'mountain-duck' do
  version '3.4.0.15624'
  sha256 '7987cc2b673405e7c3ea7474ba99f209b54f61a3c3d486279e9bccd6169b7c43'

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
