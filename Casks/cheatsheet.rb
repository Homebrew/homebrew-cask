cask "cheatsheet" do
  version "1.5.2"
  sha256 "2236c291f33c49d74d83dd8f6829fef56b409d6fc41ba203c859d24b2962d076"

  # mediaatelier.com/CheatSheet/ was verified as official when first introduced to the cask
  url "https://mediaatelier.com/CheatSheet/CheatSheet_#{version}.zip"
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
