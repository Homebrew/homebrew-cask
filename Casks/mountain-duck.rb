cask "mountain-duck" do
  version "4.6.0,18117"
  sha256 "aa2647345d60f5f2a28649d452c632a298d315bec74696455f4a0ebe78dc4a20"

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
    "~/Library/Containers/io.mountainduck.findersync",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/Preferences/io.mountainduck.plist",
    "~/Library/Preferences/G69SCX94XU.duck.plist",
  ]
end
