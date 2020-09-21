cask "mountain-duck" do
  version "4.2.2.17120"
  sha256 "6885e585d9a6fb31427d9c12f8c5819a34d7709c61ac3acc7344e1bfcd99a23d"

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name "Mountain Duck"
  desc "Mounts servers and cloud storages as a disk on the desktop"
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
