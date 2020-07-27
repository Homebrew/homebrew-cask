cask "lyn" do
  version "1.13"
  sha256 "12178ed28ae46985c1c4cffd541a704ad4a3727ed450cf14b80fae755048a7bc"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast "https://www.lynapp.com/lyn/update.xml"
  name "Lyn"
  homepage "https://www.lynapp.com/"

  app "Lyn.app"

  zap trash: [
    "~/Library/Application Support/Lyn",
    "~/Library/Caches/com.lynapp.lyn",
    "~/Library/Preferences/com.lynapp.lyn.plist",
  ]
end
