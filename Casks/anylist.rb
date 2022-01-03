cask "anylist" do
  version "1.2,3"
  sha256 "be31f177fac4694e6f391a0231e3cb2d834d51c19129696b5191fc1d1b4601f2"

  url "https://s3.amazonaws.com/files.anylistapp.com/mac/AnyList_v#{version.csv.first.dots_to_underscores}.zip",
      verified: "s3.amazonaws.com/files.anylistapp.com/"
  name "AnyList"
  desc "Grocery shopping list"
  homepage "https://www.anylistapp.com/"

  livecheck do
    url "https://s3.amazonaws.com/files.anylistapp.com/mac/appcast.xml"
    strategy :sparkle
  end

  app "AnyList.app"

  zap trash: [
    "~/Library/Application Scripts/com.purplecover.anylist.mac.recipe-import",
    "~/Library/Application Support/com.purplecover.anylist.mac",
    "~/Library/Caches/com.purplecover.anylist.mac",
    "~/Library/Containers/com.purplecover.anylist.mac.recipe-import",
    "~/Library/Logs/AnyList",
    "~/Library/Preferences/com.purplecover.anylist.mac.plist",
  ]
end
