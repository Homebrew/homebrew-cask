cask "lyn" do
  version "2.0.1"
  sha256 "8b293150b04470031587a2da1fab129a4caf34bd3d33acb09fac3a1cc7d9a7ff"

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
