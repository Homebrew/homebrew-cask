cask "lyn" do
  version "2.0.7"
  sha256 "0b715a2185fb024edc60b0c4862d43765763b3f4c7cd314fab01aced3374ee60"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  name "Lyn"
  homepage "https://www.lynapp.com/"

  livecheck do
    url "https://www.lynapp.com/lyn/update#{version.major}x.xml"
    strategy :sparkle
  end

  app "Lyn.app"

  zap trash: [
    "~/Library/Application Support/Lyn",
    "~/Library/Caches/com.lynapp.lyn",
    "~/Library/Preferences/com.lynapp.lyn.plist",
  ]
end
