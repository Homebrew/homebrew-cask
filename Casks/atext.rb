cask "atext" do
  version "2.36.6"
  sha256 "f9dc1dd059909c4912791079da21d651c0cae94cfbc43fbef5b3c0266b8bfe94"

  url "https://www.trankynam.com/atext/downloads/aText.dmg"
  appcast "https://www.trankynam.com/atext/aText-Appcast.xml"
  name "aText"
  desc "Tool to replace abbreviations while typing"
  homepage "https://www.trankynam.com/atext/"

  auto_updates true

  app "aText.app"

  zap trash: [
    "~/Library/Application Scripts/com.trankynam.aText",
    "~/Library/Application Support/com.trankynam.aText",
    "~/Library/Caches/com.trankynam.aText",
    "~/Library/Containers/com.trankynam.aText",
    "~/Library/Cookies/com.trankynam.aText.binarycookies",
    "~/Library/Preferences/com.trankynam.aText.plist",
    "~/Library/Saved Application State/com.trankynam.aText.savedState",
  ]
end
