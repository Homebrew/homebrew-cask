cask "atext" do
  version "2.36.5"
  sha256 "0ca646a2805314587be77a4fc77856b9f25c52b96d2d8d0fbcbff0ad6cd9f75b"

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
