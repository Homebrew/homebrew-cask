cask "cheatsheet" do
  version "1.6"
  sha256 "64986f698f44d6644378c771379ed14eea6f4be00e7e4e75152f9d779f2190f4"

  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip",
      verified: "mediaatelier.com/CheatSheet/"
  appcast "https://mediaatelier.com/CheatSheet/feed.php"
  name "CheatSheet"
  desc "Tool to list all active shortcuts of the current application"
  homepage "https://www.cheatsheetapp.com/CheatSheet/"

  app "CheatSheet.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.CheatSheet",
    "~/Library/Caches/com.mediaatelier.CheatSheet",
    "~/Library/Preferences/com.mediaatelier.CheatSheet.plist",
  ]
end
