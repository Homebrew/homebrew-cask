cask "mountain-duck" do
  version "5.3.1,29526"
  sha256 "b224d053f47d30253e0b7b86a19018f94496dc06246f1ff6b79fe3717764936d"

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
