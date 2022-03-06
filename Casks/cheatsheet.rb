cask "cheatsheet" do
  version "1.6.3"
  sha256 "1bfd6b85e8180d33bc6ba19620b5c6f083536d749bbd84c66d0a47f93459ee17"

  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
  name "CheatSheet"
  desc "Tool to list all active shortcuts of the current application"
  homepage "https://www.mediaatelier.com/CheatSheet/"

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
