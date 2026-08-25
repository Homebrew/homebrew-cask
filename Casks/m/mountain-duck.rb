cask "mountain-duck" do
  version "5.3.2,29785"
  sha256 "682d496bfd747a6f74a63c63f4a441b5d376034249686c7be29f9679628004ef"

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version.csv.first}.#{version.csv.second}.zip"
  name "Mountain Duck"
  desc "Mounts servers and cloud storages as a disk on the desktop"
  homepage "https://mountainduck.io/"

  livecheck do
    url "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

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
