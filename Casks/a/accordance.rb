cask "accordance" do
  version "14.0.8"
  sha256 "c5634124ac26bd7a1028c4edacb5ebd7d3e3f341f211459104d00a2791cce944"

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
