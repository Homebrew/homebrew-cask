cask "bezel" do
  version "1.3.3-beta1"
  sha256 "c7fd771bb941df0f5de2ec10daec65fdcc1bd8a0433284f651a16d5d6e937ef5"

  url "https://download.nonstrict.eu/bezel/Bezel-#{version}.zip",
      verified: "download.nonstrict.eu"
  name "Bezel"
  desc "Mirror, present, and record iOS screen output"
  homepage "https://getbezel.app/"

  livecheck do
    url "https://download.nonstrict.eu/bezel/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Bezel.app"

  zap trash: [
    "~/Library/Caches/com.nonstrict.Bezel-direct",
    "~/Library/HTTPStorages/com.nonstrict.Bezel-direct",
    "~/Library/Preferences/com.nonstrict.Bezel-direct.plist",
  ]
end
