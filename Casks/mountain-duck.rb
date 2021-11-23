cask "mountain-duck" do
  version "4.8.2,18835"
  sha256 "84f2e599e612639f4275f6633bcae6ecc489f0c839f20a66128cd7a09768d102"

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
