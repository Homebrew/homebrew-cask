cask "accordance" do
  version "14.0.7"
  sha256 "457713505eded617c7938b91998ca5c1fe0b813d52d82dd683b5d1a629090f7c"

  url "https://d366ra67x2bs56.cloudfront.net/mac/Acc_#{version}.zip",
      verified: "d366ra67x2bs56.cloudfront.net/"
  name "Accordance Bible Software"
  desc "Bible study software"
  homepage "https://www.accordancebible.com/"

  livecheck do
    url "https://accordancefiles1.com/xml/appcast_#{version.major}.xml"
    strategy :sparkle, &:short_version
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
