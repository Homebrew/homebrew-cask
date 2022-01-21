cask "cheatsheet" do
  version "1.6.2"
  sha256 "8e80029a61b5b53b7b263409295f4769733d8158f3fe58bffe1cce84bc371b6f"

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
