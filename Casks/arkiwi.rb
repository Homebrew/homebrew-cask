cask "arkiwi" do
  version "4.1,401"
  sha256 "02ce9cca1e118b4b1c3af98b3b11fad38234be8f57a0a6908fcdee1a14eea18a"

  url "https://www.mariogt.com/appsChest/ArKiwi#{version.before_comma.dots_to_hyphens}.zip"
  name "ArKiwi"
  desc "File archiver"
  homepage "https://www.mariogt.com/arkiwi.html"

  livecheck do
    url "https://www.mariogt.com/appsChest/arkiwiAppCast.xml"
    strategy :sparkle
  end

  app "ArKiwi.app"

  zap trash: [
    "~/Library/Containers/com.mariogt.arkiwi/Data/Library/Application Support/ArKiwi",
    "~/Library/Containers/com.mariogt.arkiwi/Data/Library/Preferences/com.mariogt.arkiwi.plist",
  ]
end
