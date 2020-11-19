cask "lyn" do
  version "2.0"
  sha256 "2706168da42f1302725140120eb00e9c66dfbc87ede7a7d35d2f60d00b2068d7"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast "https://www.lynapp.com/lyn/update#{version.major}x.xml"
  name "Lyn"
  homepage "https://www.lynapp.com/"

  app "Lyn.app"

  zap trash: [
    "~/Library/Application Support/Lyn",
    "~/Library/Caches/com.lynapp.lyn",
    "~/Library/Preferences/com.lynapp.lyn.plist",
  ]
end
