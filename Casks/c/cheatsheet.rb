cask "cheatsheet" do
  version "1.6.4"
  sha256 "0af341585bc93a6935266e280c2661642cd8496ceb37ccad4056ecf2f002ea34"

  url "https://www.mediaatelier.com/CheatSheet/CheatSheet_#{version}.dmg"
  name "CheatSheet"
  desc "Tool to list all active shortcuts of the current application"
  homepage "https://www.mediaatelier.com/CheatSheet/"

  deprecate! date: "2024-11-09", because: :discontinued

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CheatSheet.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.CheatSheet",
    "~/Library/Caches/com.mediaatelier.CheatSheet",
    "~/Library/Preferences/com.mediaatelier.CheatSheet.plist",
  ]
end
