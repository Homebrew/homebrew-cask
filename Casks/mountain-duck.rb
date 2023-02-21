cask "mountain-duck" do
  version "4.13.5,20986"
  sha256 "ce4caa9c8b3dc5ef5fd7d37183596a4654d47ae6323b0421b414e8b65649456a"

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version.csv.first}.#{version.csv.second}.zip"
  name "Mountain Duck"
  desc "Mounts servers and cloud storages as a disk on the desktop"
  homepage "https://mountainduck.io/"

  livecheck do
    url "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mountain Duck.app"

  zap trash: [
    "~/Library/Application Scripts/io.mountainduck.findersync",
    "~/Library/Caches/io.mountainduck",
    "~/Library/Containers/io.mountainduck.findersync",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/Preferences/G69SCX94XU.duck.plist",
    "~/Library/Preferences/io.mountainduck.plist",
  ]
end
