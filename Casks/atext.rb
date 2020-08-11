cask "atext" do
  version "2.36.4"
  sha256 "34c8ca9a90176c8866eb0e33d2a2abf5f44f8a974b955eb8e4297e4a3e5e957f"

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
