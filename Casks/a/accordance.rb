cask "accordance" do
  version "14.1.0"
  sha256 "d3f637f6742d9e16e8d307c45f103315726af84e2941df8fe348d2bd3b968630"

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
