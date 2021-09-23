cask "mountain-duck" do
  version "4.7.2,18403"
  sha256 "5fa9a3fcdb24b6903fc898c0995a323d3a47c2594ded2838b5fd157683855ebb"

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version.before_comma}.#{version.after_comma}.zip"
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
    "~/Library/Preferences/io.mountainduck.plist",
    "~/Library/Preferences/G69SCX94XU.duck.plist",
  ]
end
