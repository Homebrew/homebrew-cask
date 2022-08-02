cask "accordance" do
  version "13.3.2"
  sha256 "d425e73ab3d15aee0e57f4226e08d3d884f2dfd33956e5e612e3b3b03da07790"

  url "https://accordancefiles1.com/products/Accordance_#{version}.dmg",
      verified: "accordancefiles1.com/"
  name "Accordance Bible Software"
  desc "Bible study software"
  homepage "https://www.accordancebible.com/"

  livecheck do
    url "https://accordancebible.com/accordance-installers/"
    regex(/href=.*?Accordance[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true

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
