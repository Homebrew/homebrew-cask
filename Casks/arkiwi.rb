cask "arkiwi" do
  version "4.1.5,4015"
  sha256 "d73ec198377a785effe76d4c444875de27bbe00becb0311f70036155220ee590"

  url "https://www.mariogt.com/appsChest/ArKiwi#{version.csv.first.dots_to_hyphens}.zip"
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
