cask "cheatsheet" do
  version "1.6.4"
  sha256 "ae9bd05e21a7528e050938c927e09500120e2a1b19da540504883ddcfb1b5d68"

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
