cask "lunarbar" do
  version "1.2.1"
  sha256 "33a0046b10d293b1db324d105b05d4165fc7aa2ceb333f90e2ac84a130683e92"

  url "https://github.com/LunarBar-app/LunarBar/releases/download/v#{version}/LunarBar-#{version}.dmg"
  name "LunarBar"
  desc "Lunar calendar for menu bar"
  homepage "https://github.com/LunarBar-app/LunarBar"

  depends_on macos: ">= :ventura"

  app "LunarBar.app"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.lunarbar",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.lunarbar.sfl*",
    "~/Library/Containers/app.cyan.lunarbar",
    "~/Library/Saved Application State/app.cyan.lunarbar.savedState",
  ]
end
