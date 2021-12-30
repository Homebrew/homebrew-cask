cask "cheatsheet" do
  version "1.6.1"
  sha256 "fffada8dd3480326dd399bf8a9c0deda6c9554ca48c23507a2bd3339880c26b6"

  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip",
      verified: "mediaatelier.com/CheatSheet/"
  name "CheatSheet"
  desc "Tool to list all active shortcuts of the current application"
  homepage "https://www.cheatsheetapp.com/CheatSheet/"

  livecheck do
    url "https://mediaatelier.com/CheatSheet/feed.php"
    strategy :sparkle
  end

  auto_updates true

  app "CheatSheet.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.CheatSheet",
    "~/Library/Caches/com.mediaatelier.CheatSheet",
    "~/Library/Preferences/com.mediaatelier.CheatSheet.plist",
  ]
end
