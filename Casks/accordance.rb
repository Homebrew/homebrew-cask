cask "accordance" do
  version "14.0.3"
  sha256 "97ab4841dfaa8c0dde7f8b24a5988e97e6738cf43cc2df4caae49f5ef779c2a0"

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
