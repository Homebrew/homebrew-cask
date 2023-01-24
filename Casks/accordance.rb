cask "accordance" do
  version "14.0.4"
  sha256 "b3831a9b9339cef560fb737107300f3f2030858a179d27761cd9a8b48c4d1ddf"

  url "https://aaeaa95e7a277e07438c-1bc4b418142835c9d827936172799c04.ssl.cf1.rackcdn.com/Acc_#{version}.zip",
      verified: "aaeaa95e7a277e07438c-1bc4b418142835c9d827936172799c04.ssl.cf1.rackcdn.com/"
  name "Accordance Bible Software"
  desc "Bible study software"
  homepage "https://www.accordancebible.com/"

  livecheck do
    url "https://accordancefiles1.com/xml/appcast_#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Accordance.app"

  uninstall quit: "com.OakTree.Accordance"

  zap trash: [
    "~/Library/Application Support/Accordance",
    "~/Library/Application Support/com.OakTree.Accordance",
    "~/Library/Caches/com.OakTree.Accordance",
    "~/Library/Preferences/Accordance Preferences",
    "~/Library/Preferences/com.OakTree.Accordance.Path.txt",
    "~/Library/Preferences/com.OakTree.Accordance.plist",
    "~/Library/WebKit/com.OakTree.Accordance",
  ]
end
