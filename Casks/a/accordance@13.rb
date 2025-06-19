cask "accordance@13" do
  version "13.3.5"
  sha256 "c91674da93b87915d7c27ed45792518dd1f07bc9fd5aa9c98fae2b25d38ae8b3"

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
  depends_on macos: ">= :big_sur"

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
