cask "mountain-duck" do
  version "4.15.0,21616"
  sha256 "d7d0f5ba96b3bb530c6a96c4d81150ceaafec59a088fde478ff39c318bf727bf"

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version.csv.first}.#{version.csv.second}.zip"
  name "Mountain Duck"
  desc "Mounts servers and cloud storages as a disk on the desktop"
  homepage "https://mountainduck.io/"

  livecheck do
    url "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
