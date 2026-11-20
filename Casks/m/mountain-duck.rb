cask "mountain-duck" do
  version "5.4.0,30093"
  sha256 "a17badf342dc42616a7cb2f9843913fb9c5762401cbbee46876ab1bdd683e0cc"

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

  uninstall launchctl: "io.mountainduck.loginitem"

  zap trash: [
    "~/Library/Application Scripts/io.mountainduck.fileprovider",
    "~/Library/Application Scripts/io.mountainduck.findersync",
    "~/Library/Application Scripts/io.mountainduck.loginitem",
    "~/Library/Application Support/Mountain Duck",
    "~/Library/Caches/io.mountainduck",
    "~/Library/Containers/io.mountainduck.fileprovider",
    "~/Library/Containers/io.mountainduck.findersync",
    "~/Library/Containers/io.mountainduck.loginitem",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/HTTPStorages/io.mountainduck",
    "~/Library/Logs/Mountain Duck",
    "~/Library/Preferences/G69SCX94XU.duck.plist",
    "~/Library/Preferences/io.mountainduck.plist",
  ]
end
