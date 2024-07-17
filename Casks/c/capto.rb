cask "capto" do
  version "2.0.0,1002.0.0022"
  sha256 :no_check

  url "https://d3l6g06uqih57x.cloudfront.net/Captomac/webstore/Capto.dmg",
      verified: "d3l6g06uqih57x.cloudfront.net/Captomac/"
  name "Capto"
  desc "Screen capture/recorder and video editor"
  homepage "https://www.globaldelight.com/capto/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "Capto.app"

  zap trash: [
    "~/Library/Application Scripts/U4MRT5KL8R.com.globaldelight.Capto.Web",
    "~/Library/Caches/com.globaldelight.*",
    "~/Library/Group Containers/U4MRT5KL8R.com.globaldelight.Capto.Web",
    "~/Library/HTTPStorages/com.globaldelight.*",
    "~/Library/Preferences/com.globaldelight.*.plist",
    "~/Pictures/Capto",
  ]
end
