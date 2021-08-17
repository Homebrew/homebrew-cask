cask "mountain-duck" do
  version "4.7.1,18339"
  sha256 "620af16355adecc445dbf51ef19f435843fe1c329bb432aad804561995222d37"

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
