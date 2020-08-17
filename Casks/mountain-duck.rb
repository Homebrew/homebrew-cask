cask "mountain-duck" do
  version "4.1.0.16877"
  sha256 "0616fefd02d86f8246a3ea5bcc529fd07bf3e88504bb83c28181a4fad9e1af3a"

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name "Mountain Duck"
  homepage "https://mountainduck.io/"

  auto_updates true

  app "Mountain Duck.app"

  zap trash: [
    "~/Library/Application Scripts/io.mountainduck.findersync",
    "~/Library/Containers/io.mountainduck.findersync",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/Preferences/io.mountainduck.plist",
  ]
end
