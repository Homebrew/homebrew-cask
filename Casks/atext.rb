cask "atext" do
  version "2.36.6,104"
  sha256 :no_check

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
